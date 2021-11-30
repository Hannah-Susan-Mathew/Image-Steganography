clc;
% Reading the input image
input = imread('cameraman.tif');

% Message to be embedded
message = 'This is a secret message and is to be embedded in the image.';

%Converting the message to binary form [in the form of rows]
binary_msg = binary(message);

% Embedding the message into 'output'
output = embed(input,binary_msg,message);

% Absolute difference of the images
image_diff = output - input;

% Displaying both the input an output images
subplot(1,3,1),imshow(input),title('Original Image')
subplot(1,3,2),imshow(output),title('Tranformed Image')
subplot(1,3,3),imshow(image_diff,[]),title('Diffrence of the images')