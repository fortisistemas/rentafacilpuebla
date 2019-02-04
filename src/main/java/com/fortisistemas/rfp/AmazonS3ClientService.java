package com.fortisistemas.rfp;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.CopyObjectRequest;
import com.amazonaws.services.s3.model.DeleteObjectRequest;
import com.amazonaws.services.s3.model.PutObjectRequest;

@Service
public class AmazonS3ClientService {
	private AmazonS3 s3client;
	@Value("${amazon.endpoint}")
	private String endpointUrl;
	@Value("${amazon.bucketName}")
	private String bucketName;
	@Value("${amazon.accessKey}")
	private String accessKey;
	@Value("${amazon.secretKey}")
	private String secretKey;
	@Value("${amazon.region}")
	private String region;

	@PostConstruct
	private void initializeAmazon() {
		BasicAWSCredentials creds = new BasicAWSCredentials(this.accessKey, this.secretKey);
		this.s3client = AmazonS3ClientBuilder.standard().withRegion(region)
				.withCredentials(new AWSStaticCredentialsProvider(creds)).build();
	}

	public String uploadFile(MultipartFile multipartFile, String fileName) {
		System.out.println("FILE UPLOAD!");
		String fileUrl = "";
		try {
			File file = convertMultiPartToFile(multipartFile);
			fileUrl = endpointUrl + "/" + bucketName + "/" + fileName;
			uploadFileTos3bucket(fileName, file);
			file.delete();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return fileUrl;
	}

	private File convertMultiPartToFile(MultipartFile file) throws IOException {
		File convFile = new File(file.getOriginalFilename());
		FileOutputStream fos = new FileOutputStream(convFile);
		fos.write(file.getBytes());
		fos.close();
		return convFile;
	}

	private void uploadFileTos3bucket(String fileName, File file) {
		System.out.println(fileName);
		s3client.putObject(
				new PutObjectRequest(bucketName, fileName, file).withCannedAcl(CannedAccessControlList.PublicRead));
	}

	public String deleteFileFromS3Bucket(String fileUrl) {
		String fileName = fileUrl.substring(fileUrl.lastIndexOf("/") + 1);
		s3client.deleteObject(new DeleteObjectRequest(bucketName, fileName));
		return "Successfully deleted";
	}

	public String renameFileFromS3Bucket(String source, String destination) {
		CopyObjectRequest copyRequest = new CopyObjectRequest(bucketName, source, bucketName, destination)
				.withCannedAccessControlList(CannedAccessControlList.PublicRead);
		s3client.copyObject(copyRequest);
		
		DeleteObjectRequest deleteRequest = new DeleteObjectRequest(bucketName, source);
		s3client.deleteObject(deleteRequest);
		return "renamed";
	}

}