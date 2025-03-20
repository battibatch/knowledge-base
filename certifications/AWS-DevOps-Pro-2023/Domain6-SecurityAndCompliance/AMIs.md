# AMIs

How to move an EC2 across AZ? 
Create AMI, from source
create EC2 in destination using AMI

Cross Account AMI Sharing
* can share AMI with another account
* Does not affect ownership
* AMI's volumes must be unencrypted
    * or use a customer managed key
    * must also shared key to decrypt

Cross Account AMI Copy
* If you copy an AMI that has been shared, you are the owner of the new AMI in your account
* Owner of sources AMI must grant permissions for the storage that backs the AMI (EBS snapshot) 
* If shared AMI has encrypted snapshot, destination needs key. 
* can encrypt with own key while copying

can share with orgs and OUs