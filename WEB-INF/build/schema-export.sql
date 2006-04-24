drop table product;
drop table opportunityProduct;
drop table product_opportunity;
drop table PAYMENT;
drop table module_function1;
drop table descriptor_group;
drop table backend_user;
drop table AGENT;
drop table BENEFICIARY;
drop table contact;
drop table descriptor;
drop table opportunity;
drop table workflow_role;
drop table site;
drop table wizard;
drop table collection;
drop table businessPartner;
create table product (
   id VARCHAR(28) not null,
   price INTEGER,
   supplier VARCHAR(255),
   unit INTEGER,
   description VARCHAR(255),
   name VARCHAR(255),
   measure VARCHAR(255),
   create_by VARCHAR(28),
   update_by VARCHAR(28),
   create_date DATETIME,
   update_date DATETIME,
   active_flag INTEGER,
   primary key (id)
);
create table opportunityProduct (
   id VARCHAR(28) not null,
   opportunityId VARCHAR(28),
   unit VARCHAR(255),
   productId VARCHAR(255),
   name VARCHAR(255),
   price VARCHAR(255),
   sale VARCHAR(255),
   create_by VARCHAR(28),
   update_by VARCHAR(28),
   create_date DATETIME,
   update_date DATETIME,
   active_flag INTEGER,
   primary key (id)
);
create table product_opportunity (
   product_id VARCHAR(28) not null,
   opportunity_id VARCHAR(28) not null,
   primary key (opportunity_id, product_id)
);
create table PAYMENT (
   id BIGINT not null,
   accountNr VARCHAR(255),
   agentNr VARCHAR(255),
   amount NUMERIC(19, 2),
   amountMentioned VARCHAR(255),
   bank VARCHAR(255),
   bankTransferAccount VARCHAR(255),
   bankTransferAddress VARCHAR(255),
   bankTransferName VARCHAR(255),
   formNr VARCHAR(255),
   name VARCHAR(255),
   paymentType VARCHAR(255),
   receiptNr VARCHAR(255),
   reportStatus VARCHAR(255),
   salesOffice VARCHAR(255),
   date DATE,
   primary key (id)
);
create table module_function1 (
   id VARCHAR(28) not null,
   descriptor_id VARCHAR(28),
   description VARCHAR(255),
   name VARCHAR(128),
   ref_desc VARCHAR(255),
   viewall_flag INTEGER,
   iparent VARCHAR(28),
   create_by VARCHAR(28),
   update_by VARCHAR(28),
   create_date DATETIME,
   update_date DATETIME,
   active_flag INTEGER,
   primary key (id)
);
create table descriptor_group (
   id VARCHAR(28) not null,
   group_id VARCHAR(255),
   folder VARCHAR(128),
   description VARCHAR(128),
   create_by VARCHAR(28),
   update_by VARCHAR(28),
   create_date DATETIME,
   update_date DATETIME,
   active_flag INTEGER,
   primary key (id)
);
create table backend_user (
   id VARCHAR(28) not null,
   username VARCHAR(128),
   password VARCHAR(30),
   first_name VARCHAR(128),
   last_name VARCHAR(128),
   address1 VARCHAR(255),
   address2 VARCHAR(255),
   city VARCHAR(128),
   create_by VARCHAR(28),
   update_by VARCHAR(28),
   create_date DATETIME,
   update_date DATETIME,
   active_flag INTEGER,
   primary key (id)
);
create table AGENT (
   id BIGINT not null,
   name VARCHAR(255),
   status VARCHAR(255),
   type VARCHAR(255),
   address VARCHAR(255),
   birthday DATE,
   city VARCHAR(255),
   idNumber VARCHAR(255),
   idType VARCHAR(255),
   marriageStatus VARCHAR(255),
   sex VARCHAR(255),
   zipNumber VARCHAR(255),
   rank VARCHAR(255),
   uplineId BIGINT,
   faxNumber VARCHAR(255),
   phoneNumber VARCHAR(255),
   primary key (id)
);
create table BENEFICIARY (
   id BIGINT not null,
   address VARCHAR(255),
   name VARCHAR(255),
   birthday DATE,
   city VARCHAR(255),
   faxNumber VARCHAR(255),
   height DOUBLE PRECISION,
   idNumber VARCHAR(255),
   idType VARCHAR(255),
   marriageStatus VARCHAR(255),
   occupation VARCHAR(255),
   phoneNumber VARCHAR(255),
   productType VARCHAR(255),
   sex VARCHAR(255),
   weight DOUBLE PRECISION,
   zipNumber VARCHAR(255),
   claim NUMERIC(19, 2),
   premium NUMERIC(19, 2),
   paymentStatus VARCHAR(255),
   rank VARCHAR(255),
   registrationDay DATE,
   uplineId BIGINT,
   agentId BIGINT,
   primary key (id)
);
create table contact (
   id VARCHAR(28) not null,
   businessPartnerId VARCHAR(28),
   address VARCHAR(255),
   assistant VARCHAR(255),
   assistantPhone VARCHAR(255),
   birthDate VARCHAR(255),
   city VARCHAR(255),
   country VARCHAR(255),
   description VARCHAR(255),
   email VARCHAR(255),
   fax VARCHAR(255),
   firstName VARCHAR(255),
   homePhone VARCHAR(255),
   lastName VARCHAR(255),
   mobile VARCHAR(255),
   officePhone VARCHAR(255),
   otherEmail VARCHAR(255),
   otherPhone VARCHAR(255),
   zipCode VARCHAR(255),
   create_by VARCHAR(28),
   update_by VARCHAR(28),
   create_date DATETIME,
   update_date DATETIME,
   active_flag INTEGER,
   primary key (id)
);
create table descriptor (
   id VARCHAR(28) not null,
   name VARCHAR(255),
   description VARCHAR(255),
   url_action VARCHAR(255),
   url_descriptor VARCHAR(255),
   descriptor_flag INTEGER,
   type_flag INTEGER,
   create_by VARCHAR(28),
   update_by VARCHAR(28),
   create_date DATETIME,
   update_date DATETIME,
   active_flag INTEGER,
   primary key (id)
);
create table opportunity (
   id VARCHAR(28) not null,
   amount VARCHAR(255),
   description VARCHAR(255),
   expectedCloseDate VARCHAR(255),
   name VARCHAR(255),
   nextStep VARCHAR(255),
   probability VARCHAR(255),
   salesStage VARCHAR(255),
   type VARCHAR(255),
   businessPartnerId VARCHAR(28),
   create_by VARCHAR(28),
   update_by VARCHAR(28),
   create_date DATETIME,
   update_date DATETIME,
   active_flag INTEGER,
   primary key (id)
);
create table workflow_role (
   id VARCHAR(28) not null,
   description VARCHAR(125),
   name VARCHAR(50),
   moduleFunctionId VARCHAR(28),
   create_by VARCHAR(28),
   update_by VARCHAR(28),
   create_date DATETIME,
   update_date DATETIME,
   active_flag INTEGER,
   primary key (id)
);
create table site (
   id VARCHAR(28) not null,
   name VARCHAR(255),
   description VARCHAR(255),
   title VARCHAR(255),
   notify_flag INTEGER,
   theme_id VARCHAR(255),
   site_headline VARCHAR(255),
   admin_email VARCHAR(255),
   notify_email VARCHAR(255),
   notify_from VARCHAR(255),
   notify_message VARCHAR(255),
   site_url VARCHAR(255),
   url_branding VARCHAR(255),
   create_by VARCHAR(28),
   update_by VARCHAR(28),
   create_date DATETIME,
   update_date DATETIME,
   active_flag INTEGER,
   primary key (id)
);
create table wizard (
   id VARCHAR(28) not null,
   name VARCHAR(255),
   description VARCHAR(255),
   folderName VARCHAR(255),
   create_by VARCHAR(28),
   update_by VARCHAR(28),
   create_date DATETIME,
   update_date DATETIME,
   active_flag INTEGER,
   primary key (id)
);
create table collection (
   id VARCHAR(28) not null,
   name VARCHAR(255),
   description VARCHAR(255),
   folderName VARCHAR(255),
   create_by VARCHAR(28),
   update_by VARCHAR(28),
   create_date DATETIME,
   update_date DATETIME,
   active_flag INTEGER,
   primary key (id)
);
create table businessPartner (
   id VARCHAR(28) not null,
   address VARCHAR(255),
   city VARCHAR(255),
   country VARCHAR(255),
   description VARCHAR(255),
   email VARCHAR(255),
   fax VARCHAR(255),
   name VARCHAR(255),
   officePhone VARCHAR(255),
   otherEmail VARCHAR(255),
   zipCode VARCHAR(255),
   create_by VARCHAR(28),
   update_by VARCHAR(28),
   create_date DATETIME,
   update_date DATETIME,
   active_flag INTEGER,
   primary key (id)
);
alter table opportunityProduct add index (opportunityId), add constraint FK1D74BA9CDFDC874E foreign key (opportunityId) references opportunity (id);
alter table product_opportunity add index (product_id), add constraint FKA5762383687CCA6B foreign key (product_id) references product (id);
alter table product_opportunity add index (opportunity_id), add constraint FKA57623831BB4B607 foreign key (opportunity_id) references opportunity (id);
alter table module_function1 add index (descriptor_id), add constraint FKD9CF9146223A33EB foreign key (descriptor_id) references descriptor (id);
alter table module_function1 add index (iparent), add constraint FKD9CF914677195653 foreign key (iparent) references module_function1 (id);
alter table AGENT add index (uplineId), add constraint FK3B54AE55CE9FA8A foreign key (uplineId) references AGENT (id);
alter table BENEFICIARY add index (uplineId), add constraint FK5EA4CAC55CE9FA8A foreign key (uplineId) references BENEFICIARY (id);
alter table BENEFICIARY add index (agentId), add constraint FK5EA4CAC5C0C29F00 foreign key (agentId) references AGENT (id);
alter table contact add index (businessPartnerId), add constraint FK38B724202BC1EC23 foreign key (businessPartnerId) references businessPartner (id);
alter table opportunity add index (businessPartnerId), add constraint FKB2FAE6D32BC1EC23 foreign key (businessPartnerId) references businessPartner (id);
alter table workflow_role add index (moduleFunctionId), add constraint FK441060F6AE03529F foreign key (moduleFunctionId) references module_function1 (id);
