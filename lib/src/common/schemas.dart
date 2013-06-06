part of storage_v1beta2_api_client;

/** A bucket. */
class Bucket {

  /** Access controls on the bucket. */
  core.List<BucketAccessControl> acl;

  /** The bucket's Cross-Origin Resource Sharing (CORS) configuration. */
  core.List<BucketCors> cors;

  /** Default access controls to apply to new objects when no ACL is provided. */
  core.List<ObjectAccessControl> defaultObjectAcl;

  /** HTTP 1.1 Entity tag for the bucket. */
  core.String etag;

  /** The ID of the bucket. */
  core.String id;

  /** The kind of item this is. For buckets, this is always storage#bucket. */
  core.String kind;

  /** The location of the bucket. Object data for objects in the bucket resides in physical storage within this region. Typical values are US and EU. Defaults to US. See the developer's guide for the authoritative list. */
  core.String location;

  /** The bucket's logging configuration, which defines the destination bucket and optional name prefix for the current bucket's logs. */
  BucketLogging logging;

  /** The metadata generation of this bucket. */
  core.int metageneration;

  /** The name of the bucket. */
  core.String name;

  /** The owner of the bucket. This will always be the project team's owner group. */
  BucketOwner owner;

  /** The URI of this bucket. */
  core.String selfLink;

  /** The bucket's storage class. This defines how objects in the bucket will be stored and determines the SLA and the cost of storage. Can be STANDARD or DRA. Defaults to STANDARD. */
  core.String storageClass;

  /** Creation time of the bucket in RFC 3339 format. */
  core.String timeCreated;

  /** The bucket's versioning configuration. */
  BucketVersioning versioning;

  /** The bucket's website configuration. */
  BucketWebsite website;

  /** Create new Bucket from JSON data */
  Bucket.fromJson(core.Map json) {
    if (json.containsKey("acl")) {
      acl = [];
      json["acl"].forEach((item) {
        acl.add(new BucketAccessControl.fromJson(item));
      });
    }
    if (json.containsKey("cors")) {
      cors = [];
      json["cors"].forEach((item) {
        cors.add(new BucketCors.fromJson(item));
      });
    }
    if (json.containsKey("defaultObjectAcl")) {
      defaultObjectAcl = [];
      json["defaultObjectAcl"].forEach((item) {
        defaultObjectAcl.add(new ObjectAccessControl.fromJson(item));
      });
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("location")) {
      location = json["location"];
    }
    if (json.containsKey("logging")) {
      logging = new BucketLogging.fromJson(json["logging"]);
    }
    if (json.containsKey("metageneration")) {
      metageneration = json["metageneration"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("owner")) {
      owner = new BucketOwner.fromJson(json["owner"]);
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("storageClass")) {
      storageClass = json["storageClass"];
    }
    if (json.containsKey("timeCreated")) {
      timeCreated = json["timeCreated"];
    }
    if (json.containsKey("versioning")) {
      versioning = new BucketVersioning.fromJson(json["versioning"]);
    }
    if (json.containsKey("website")) {
      website = new BucketWebsite.fromJson(json["website"]);
    }
  }

  /** Create JSON Object for Bucket */
  core.Map toJson() {
    var output = new core.Map();

    if (acl != null) {
      output["acl"] = new core.List();
      acl.forEach((item) {
        output["acl"].add(item.toJson());
      });
    }
    if (cors != null) {
      output["cors"] = new core.List();
      cors.forEach((item) {
        output["cors"].add(item.toJson());
      });
    }
    if (defaultObjectAcl != null) {
      output["defaultObjectAcl"] = new core.List();
      defaultObjectAcl.forEach((item) {
        output["defaultObjectAcl"].add(item.toJson());
      });
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (location != null) {
      output["location"] = location;
    }
    if (logging != null) {
      output["logging"] = logging.toJson();
    }
    if (metageneration != null) {
      output["metageneration"] = metageneration;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (owner != null) {
      output["owner"] = owner.toJson();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (storageClass != null) {
      output["storageClass"] = storageClass;
    }
    if (timeCreated != null) {
      output["timeCreated"] = timeCreated;
    }
    if (versioning != null) {
      output["versioning"] = versioning.toJson();
    }
    if (website != null) {
      output["website"] = website.toJson();
    }

    return output;
  }

  /** Return String representation of Bucket */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The owner of the bucket. This will always be the project team's owner group. */
class BucketOwner {

  /** The entity, in the form group-groupId. */
  core.String entity;

  /** The ID for the entity. */
  core.String entityId;

  /** Create new BucketOwner from JSON data */
  BucketOwner.fromJson(core.Map json) {
    if (json.containsKey("entity")) {
      entity = json["entity"];
    }
    if (json.containsKey("entityId")) {
      entityId = json["entityId"];
    }
  }

  /** Create JSON Object for BucketOwner */
  core.Map toJson() {
    var output = new core.Map();

    if (entity != null) {
      output["entity"] = entity;
    }
    if (entityId != null) {
      output["entityId"] = entityId;
    }

    return output;
  }

  /** Return String representation of BucketOwner */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The bucket's versioning configuration. */
class BucketVersioning {

  /** While set to true, versioning is fully enabled for this bucket. */
  core.bool enabled;

  /** Create new BucketVersioning from JSON data */
  BucketVersioning.fromJson(core.Map json) {
    if (json.containsKey("enabled")) {
      enabled = json["enabled"];
    }
  }

  /** Create JSON Object for BucketVersioning */
  core.Map toJson() {
    var output = new core.Map();

    if (enabled != null) {
      output["enabled"] = enabled;
    }

    return output;
  }

  /** Return String representation of BucketVersioning */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The bucket's website configuration. */
class BucketWebsite {

  /** Behaves as the bucket's directory index where missing objects are treated as potential directories. */
  core.String mainPageSuffix;

  /** The custom object to return when a requested resource is not found. */
  core.String notFoundPage;

  /** Create new BucketWebsite from JSON data */
  BucketWebsite.fromJson(core.Map json) {
    if (json.containsKey("mainPageSuffix")) {
      mainPageSuffix = json["mainPageSuffix"];
    }
    if (json.containsKey("notFoundPage")) {
      notFoundPage = json["notFoundPage"];
    }
  }

  /** Create JSON Object for BucketWebsite */
  core.Map toJson() {
    var output = new core.Map();

    if (mainPageSuffix != null) {
      output["mainPageSuffix"] = mainPageSuffix;
    }
    if (notFoundPage != null) {
      output["notFoundPage"] = notFoundPage;
    }

    return output;
  }

  /** Return String representation of BucketWebsite */
  core.String toString() => JSON.stringify(this.toJson());

}

class BucketCors {

  /** The value, in seconds, to return in the  Access-Control-Max-Age header used in preflight responses. */
  core.int maxAgeSeconds;

  /** The list of HTTP methods on which to include CORS response headers, e.g. GET, OPTIONS, POST. Note, "*" is permitted in the list of methods, and means "any method". */
  core.List<core.String> method;

  /** The list of Origins eligible to receive CORS response headers. Note: "*" is permitted in the list of origins, and means "any Origin". */
  core.List<core.String> origin;

  /** The list of HTTP headers other than the simple response headers to give permission for the user-agent to share across domains. */
  core.List<core.String> responseHeader;

  /** Create new BucketCors from JSON data */
  BucketCors.fromJson(core.Map json) {
    if (json.containsKey("maxAgeSeconds")) {
      maxAgeSeconds = json["maxAgeSeconds"];
    }
    if (json.containsKey("method")) {
      method = [];
      json["method"].forEach((item) {
        method.add(item);
      });
    }
    if (json.containsKey("origin")) {
      origin = [];
      json["origin"].forEach((item) {
        origin.add(item);
      });
    }
    if (json.containsKey("responseHeader")) {
      responseHeader = [];
      json["responseHeader"].forEach((item) {
        responseHeader.add(item);
      });
    }
  }

  /** Create JSON Object for BucketCors */
  core.Map toJson() {
    var output = new core.Map();

    if (maxAgeSeconds != null) {
      output["maxAgeSeconds"] = maxAgeSeconds;
    }
    if (method != null) {
      output["method"] = new core.List();
      method.forEach((item) {
        output["method"].add(item);
      });
    }
    if (origin != null) {
      output["origin"] = new core.List();
      origin.forEach((item) {
        output["origin"].add(item);
      });
    }
    if (responseHeader != null) {
      output["responseHeader"] = new core.List();
      responseHeader.forEach((item) {
        output["responseHeader"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of BucketCors */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The bucket's logging configuration, which defines the destination bucket and optional name prefix for the current bucket's logs. */
class BucketLogging {

  /** The destination bucket where the current bucket's logs should be placed. */
  core.String logBucket;

  /** A prefix for log object names. */
  core.String logObjectPrefix;

  /** Create new BucketLogging from JSON data */
  BucketLogging.fromJson(core.Map json) {
    if (json.containsKey("logBucket")) {
      logBucket = json["logBucket"];
    }
    if (json.containsKey("logObjectPrefix")) {
      logObjectPrefix = json["logObjectPrefix"];
    }
  }

  /** Create JSON Object for BucketLogging */
  core.Map toJson() {
    var output = new core.Map();

    if (logBucket != null) {
      output["logBucket"] = logBucket;
    }
    if (logObjectPrefix != null) {
      output["logObjectPrefix"] = logObjectPrefix;
    }

    return output;
  }

  /** Return String representation of BucketLogging */
  core.String toString() => JSON.stringify(this.toJson());

}

/** An access-control entry. */
class BucketAccessControl {

  /** The name of the bucket. */
  core.String bucket;

  /** The domain associated with the entity, if any. */
  core.String domain;

  /** The email address associated with the entity, if any. */
  core.String email;

  /** The entity holding the permission, in one of the following forms: 
- user-userId 
- user-email 
- group-groupId 
- group-email 
- allUsers 
- allAuthenticatedUsers */
  core.String entity;

  /** The ID for the entity, if any. */
  core.String entityId;

  /** HTTP 1.1 Entity tag for the access-control entry. */
  core.String etag;

  /** The ID of the access-control entry. */
  core.String id;

  /** The kind of item this is. For bucket access control entries, this is always storage#bucketAccessControl. */
  core.String kind;

  /** The access permission for the entity. Can be READER, WRITER, or OWNER. */
  core.String role;

  /** The link to this access-control entry. */
  core.String selfLink;

  /** Create new BucketAccessControl from JSON data */
  BucketAccessControl.fromJson(core.Map json) {
    if (json.containsKey("bucket")) {
      bucket = json["bucket"];
    }
    if (json.containsKey("domain")) {
      domain = json["domain"];
    }
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("entity")) {
      entity = json["entity"];
    }
    if (json.containsKey("entityId")) {
      entityId = json["entityId"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("role")) {
      role = json["role"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for BucketAccessControl */
  core.Map toJson() {
    var output = new core.Map();

    if (bucket != null) {
      output["bucket"] = bucket;
    }
    if (domain != null) {
      output["domain"] = domain;
    }
    if (email != null) {
      output["email"] = email;
    }
    if (entity != null) {
      output["entity"] = entity;
    }
    if (entityId != null) {
      output["entityId"] = entityId;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (role != null) {
      output["role"] = role;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of BucketAccessControl */
  core.String toString() => JSON.stringify(this.toJson());

}

/** An access-control list. */
class BucketAccessControls {

  /** The list of items. */
  core.List<BucketAccessControl> items;

  /** The kind of item this is. For lists of bucket access control entries, this is always storage#bucketAccessControls. */
  core.String kind;

  /** Create new BucketAccessControls from JSON data */
  BucketAccessControls.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new BucketAccessControl.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for BucketAccessControls */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of BucketAccessControls */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A list of buckets. */
class Buckets {

  /** The list of items. */
  core.List<Bucket> items;

  /** The kind of item this is. For lists of buckets, this is always storage#buckets. */
  core.String kind;

  /** The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. */
  core.String nextPageToken;

  /** Create new Buckets from JSON data */
  Buckets.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Bucket.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for Buckets */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of Buckets */
  core.String toString() => JSON.stringify(this.toJson());

}

class Channel {

  /** The address of the receiving entity where events are delivered. Specific to the channel type. */
  core.String address;

  /** The expiration instant for this channel if it is defined. */
  core.int expiration;

  /** A UUID for the channel */
  core.String id;

  /** A channel watching an API resource */
  core.String kind;

  /** Additional parameters controlling delivery channel behavior */
  ChannelParams params;

  /** An opaque id that identifies the resource that is being watched. Stable across different API versions */
  core.String resourceId;

  /** The canonicalized ID of the watched resource. */
  core.String resourceUri;

  /** An arbitrary string associated with the channel that is delivered to the target address with each event delivered over this channel. */
  core.String token;

  /** The type of delivery mechanism used by this channel */
  core.String type;

  /** Create new Channel from JSON data */
  Channel.fromJson(core.Map json) {
    if (json.containsKey("address")) {
      address = json["address"];
    }
    if (json.containsKey("expiration")) {
      expiration = json["expiration"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("params")) {
      params = new ChannelParams.fromJson(json["params"]);
    }
    if (json.containsKey("resourceId")) {
      resourceId = json["resourceId"];
    }
    if (json.containsKey("resourceUri")) {
      resourceUri = json["resourceUri"];
    }
    if (json.containsKey("token")) {
      token = json["token"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Channel */
  core.Map toJson() {
    var output = new core.Map();

    if (address != null) {
      output["address"] = address;
    }
    if (expiration != null) {
      output["expiration"] = expiration;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (params != null) {
      output["params"] = params.toJson();
    }
    if (resourceId != null) {
      output["resourceId"] = resourceId;
    }
    if (resourceUri != null) {
      output["resourceUri"] = resourceUri;
    }
    if (token != null) {
      output["token"] = token;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Channel */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Additional parameters controlling delivery channel behavior */
class ChannelParams {

  /** Create new ChannelParams from JSON data */
  ChannelParams.fromJson(core.Map json) {
  }

  /** Create JSON Object for ChannelParams */
  core.Map toJson() {
    var output = new core.Map();


    return output;
  }

  /** Return String representation of ChannelParams */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A Compose request. */
class ComposeRequest {

  /** Properties of the resulting object */
  Object destination;

  /** The kind of item this is. */
  core.String kind;

  /** The list of source objects that will be concatenated into a single object. */
  core.List<ComposeRequestSourceObjects> sourceObjects;

  /** Create new ComposeRequest from JSON data */
  ComposeRequest.fromJson(core.Map json) {
    if (json.containsKey("destination")) {
      destination = new Object.fromJson(json["destination"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("sourceObjects")) {
      sourceObjects = [];
      json["sourceObjects"].forEach((item) {
        sourceObjects.add(new ComposeRequestSourceObjects.fromJson(item));
      });
    }
  }

  /** Create JSON Object for ComposeRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (destination != null) {
      output["destination"] = destination.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (sourceObjects != null) {
      output["sourceObjects"] = new core.List();
      sourceObjects.forEach((item) {
        output["sourceObjects"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of ComposeRequest */
  core.String toString() => JSON.stringify(this.toJson());

}

class ComposeRequestSourceObjects {

  /** The generation of this object to use as the source. */
  core.int generation;

  /** The source object's name. The source object's bucket is implicitly the destination bucket. */
  core.String name;
  ComposeRequestSourceObjectsObjectPreconditions objectPreconditions;

  /** Create new ComposeRequestSourceObjects from JSON data */
  ComposeRequestSourceObjects.fromJson(core.Map json) {
    if (json.containsKey("generation")) {
      generation = json["generation"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("objectPreconditions")) {
      objectPreconditions = new ComposeRequestSourceObjectsObjectPreconditions.fromJson(json["objectPreconditions"]);
    }
  }

  /** Create JSON Object for ComposeRequestSourceObjects */
  core.Map toJson() {
    var output = new core.Map();

    if (generation != null) {
      output["generation"] = generation;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (objectPreconditions != null) {
      output["objectPreconditions"] = objectPreconditions.toJson();
    }

    return output;
  }

  /** Return String representation of ComposeRequestSourceObjects */
  core.String toString() => JSON.stringify(this.toJson());

}

class ComposeRequestSourceObjectsObjectPreconditions {

  /** Only perform the composition if the generation of the source object that would be used matches this value. If this value and a generation are both specified, they must be the same value or the call will fail. */
  core.int ifGenerationMatch;

  /** Create new ComposeRequestSourceObjectsObjectPreconditions from JSON data */
  ComposeRequestSourceObjectsObjectPreconditions.fromJson(core.Map json) {
    if (json.containsKey("ifGenerationMatch")) {
      ifGenerationMatch = json["ifGenerationMatch"];
    }
  }

  /** Create JSON Object for ComposeRequestSourceObjectsObjectPreconditions */
  core.Map toJson() {
    var output = new core.Map();

    if (ifGenerationMatch != null) {
      output["ifGenerationMatch"] = ifGenerationMatch;
    }

    return output;
  }

  /** Return String representation of ComposeRequestSourceObjectsObjectPreconditions */
  core.String toString() => JSON.stringify(this.toJson());

}

/** An object. */
class Object {

  /** Access controls on the object. */
  core.List<ObjectAccessControl> acl;

  /** The bucket containing this object. */
  core.String bucket;

  /** Cache-Control directive for the object data. */
  core.String cacheControl;

  /** Number of underlying components that make up this object. Components are accumulated by compose operations and are limited to a count of 32. */
  core.int componentCount;

  /** Content-Disposition of the object data. */
  core.String contentDisposition;

  /** Content-Encoding of the object data. */
  core.String contentEncoding;

  /** Content-Language of the object data. */
  core.String contentLanguage;

  /** Content-Type of the object data. */
  core.String contentType;

  /** CRC32c checksum, as described in RFC 4960, Appendix B; encoded using base64. */
  core.String crc32c;

  /** HTTP 1.1 Entity tag for the object. */
  core.String etag;

  /** The content generation of this object. Used for object versioning. */
  core.int generation;

  /** The ID of the object. */
  core.String id;

  /** The kind of item this is. For objects, this is always storage#object. */
  core.String kind;

  /** MD5 hash of the data; encoded using base64. */
  core.String md5Hash;

  /** Media download link. */
  core.String mediaLink;

  /** User-provided metadata, in key/value pairs. */
  ObjectMetadata metadata;

  /** The generation of the metadata for this object at this generation. Used for metadata versioning. Has no meaning outside of the context of this generation. */
  core.int metageneration;

  /** The name of this object. Required if not specified by URL parameter. */
  core.String name;

  /** The owner of the object. This will always be the uploader of the object. */
  ObjectOwner owner;

  /** The link to this object. */
  core.String selfLink;

  /** Content-Length of the data in bytes. */
  core.String size;

  /** Deletion time of the object in RFC 3339 format. Will be returned if and only if this version of the object has been deleted. */
  core.String timeDeleted;

  /** Modification time of the object metadata in RFC 3339 format. */
  core.String updated;

  /** Create new Object from JSON data */
  Object.fromJson(core.Map json) {
    if (json.containsKey("acl")) {
      acl = [];
      json["acl"].forEach((item) {
        acl.add(new ObjectAccessControl.fromJson(item));
      });
    }
    if (json.containsKey("bucket")) {
      bucket = json["bucket"];
    }
    if (json.containsKey("cacheControl")) {
      cacheControl = json["cacheControl"];
    }
    if (json.containsKey("componentCount")) {
      componentCount = json["componentCount"];
    }
    if (json.containsKey("contentDisposition")) {
      contentDisposition = json["contentDisposition"];
    }
    if (json.containsKey("contentEncoding")) {
      contentEncoding = json["contentEncoding"];
    }
    if (json.containsKey("contentLanguage")) {
      contentLanguage = json["contentLanguage"];
    }
    if (json.containsKey("contentType")) {
      contentType = json["contentType"];
    }
    if (json.containsKey("crc32c")) {
      crc32c = json["crc32c"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("generation")) {
      generation = json["generation"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("md5Hash")) {
      md5Hash = json["md5Hash"];
    }
    if (json.containsKey("mediaLink")) {
      mediaLink = json["mediaLink"];
    }
    if (json.containsKey("metadata")) {
      metadata = new ObjectMetadata.fromJson(json["metadata"]);
    }
    if (json.containsKey("metageneration")) {
      metageneration = json["metageneration"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("owner")) {
      owner = new ObjectOwner.fromJson(json["owner"]);
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("size")) {
      size = json["size"];
    }
    if (json.containsKey("timeDeleted")) {
      timeDeleted = json["timeDeleted"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
  }

  /** Create JSON Object for Object */
  core.Map toJson() {
    var output = new core.Map();

    if (acl != null) {
      output["acl"] = new core.List();
      acl.forEach((item) {
        output["acl"].add(item.toJson());
      });
    }
    if (bucket != null) {
      output["bucket"] = bucket;
    }
    if (cacheControl != null) {
      output["cacheControl"] = cacheControl;
    }
    if (componentCount != null) {
      output["componentCount"] = componentCount;
    }
    if (contentDisposition != null) {
      output["contentDisposition"] = contentDisposition;
    }
    if (contentEncoding != null) {
      output["contentEncoding"] = contentEncoding;
    }
    if (contentLanguage != null) {
      output["contentLanguage"] = contentLanguage;
    }
    if (contentType != null) {
      output["contentType"] = contentType;
    }
    if (crc32c != null) {
      output["crc32c"] = crc32c;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (generation != null) {
      output["generation"] = generation;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (md5Hash != null) {
      output["md5Hash"] = md5Hash;
    }
    if (mediaLink != null) {
      output["mediaLink"] = mediaLink;
    }
    if (metadata != null) {
      output["metadata"] = metadata.toJson();
    }
    if (metageneration != null) {
      output["metageneration"] = metageneration;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (owner != null) {
      output["owner"] = owner.toJson();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (size != null) {
      output["size"] = size;
    }
    if (timeDeleted != null) {
      output["timeDeleted"] = timeDeleted;
    }
    if (updated != null) {
      output["updated"] = updated;
    }

    return output;
  }

  /** Return String representation of Object */
  core.String toString() => JSON.stringify(this.toJson());

}

/** User-provided metadata, in key/value pairs. */
class ObjectMetadata {

  /** Create new ObjectMetadata from JSON data */
  ObjectMetadata.fromJson(core.Map json) {
  }

  /** Create JSON Object for ObjectMetadata */
  core.Map toJson() {
    var output = new core.Map();


    return output;
  }

  /** Return String representation of ObjectMetadata */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The owner of the object. This will always be the uploader of the object. */
class ObjectOwner {

  /** The entity, in the form user-userId. */
  core.String entity;

  /** The ID for the entity. */
  core.String entityId;

  /** Create new ObjectOwner from JSON data */
  ObjectOwner.fromJson(core.Map json) {
    if (json.containsKey("entity")) {
      entity = json["entity"];
    }
    if (json.containsKey("entityId")) {
      entityId = json["entityId"];
    }
  }

  /** Create JSON Object for ObjectOwner */
  core.Map toJson() {
    var output = new core.Map();

    if (entity != null) {
      output["entity"] = entity;
    }
    if (entityId != null) {
      output["entityId"] = entityId;
    }

    return output;
  }

  /** Return String representation of ObjectOwner */
  core.String toString() => JSON.stringify(this.toJson());

}

/** An access-control entry. */
class ObjectAccessControl {

  /** The name of the bucket. */
  core.String bucket;

  /** The domain associated with the entity, if any. */
  core.String domain;

  /** The email address associated with the entity, if any. */
  core.String email;

  /** The entity holding the permission, in one of the following forms: 
- user-userId 
- user-email 
- group-groupId 
- group-email 
- allUsers 
- allAuthenticatedUsers */
  core.String entity;

  /** The ID for the entity, if any. */
  core.String entityId;

  /** HTTP 1.1 Entity tag for the access-control entry. */
  core.String etag;

  /** The content generation of the object. */
  core.int generation;

  /** The ID of the access-control entry. */
  core.String id;

  /** The kind of item this is. For object access control entries, this is always storage#objectAccessControl. */
  core.String kind;

  /** The name of the object. */
  core.String object;

  /** The access permission for the entity. Can be READER or OWNER. */
  core.String role;

  /** The link to this access-control entry. */
  core.String selfLink;

  /** Create new ObjectAccessControl from JSON data */
  ObjectAccessControl.fromJson(core.Map json) {
    if (json.containsKey("bucket")) {
      bucket = json["bucket"];
    }
    if (json.containsKey("domain")) {
      domain = json["domain"];
    }
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("entity")) {
      entity = json["entity"];
    }
    if (json.containsKey("entityId")) {
      entityId = json["entityId"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("generation")) {
      generation = json["generation"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("object")) {
      object = json["object"];
    }
    if (json.containsKey("role")) {
      role = json["role"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for ObjectAccessControl */
  core.Map toJson() {
    var output = new core.Map();

    if (bucket != null) {
      output["bucket"] = bucket;
    }
    if (domain != null) {
      output["domain"] = domain;
    }
    if (email != null) {
      output["email"] = email;
    }
    if (entity != null) {
      output["entity"] = entity;
    }
    if (entityId != null) {
      output["entityId"] = entityId;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (generation != null) {
      output["generation"] = generation;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (object != null) {
      output["object"] = object;
    }
    if (role != null) {
      output["role"] = role;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of ObjectAccessControl */
  core.String toString() => JSON.stringify(this.toJson());

}

/** An access-control list. */
class ObjectAccessControls {

  /** The kind of item this is. For lists of object access control entries, this is always storage#objectAccessControls. */
  core.String kind;

  /** Create new ObjectAccessControls from JSON data */
  ObjectAccessControls.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for ObjectAccessControls */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of ObjectAccessControls */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A list of objects. */
class Objects {

  /** The list of items. */
  core.List<Object> items;

  /** The kind of item this is. For lists of objects, this is always storage#objects. */
  core.String kind;

  /** The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. */
  core.String nextPageToken;

  /** The list of prefixes of objects matching-but-not-listed up to and including the requested delimiter. */
  core.List<core.String> prefixes;

  /** Create new Objects from JSON data */
  Objects.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Object.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("prefixes")) {
      prefixes = [];
      json["prefixes"].forEach((item) {
        prefixes.add(item);
      });
    }
  }

  /** Create JSON Object for Objects */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (prefixes != null) {
      output["prefixes"] = new core.List();
      prefixes.forEach((item) {
        output["prefixes"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of Objects */
  core.String toString() => JSON.stringify(this.toJson());

}

