# S4-carrier-branding
Need help creating branding for a stock rom.


.class public Lcom/samsung/sprint/chameleon/ChameleonHelper;
.super Ljava/lang/Object;
.source "ChameleonHelper.java"


# static fields
.field private static final DEFAULT_NETWORKCODE_VALUE:Ljava/lang/String; = "310000"

.field private static final KEY_SESSION_IN_PROGRESS:Ljava/lang/String; = "is_in_session"

.field private static final PERM_CHANGE_FAIL:I = -0x1

.field private static final PERM_CHANGE_SUCCESS:I = 0x1

.field private static final PRIO_TO_V1_7_MODELS:[Ljava/lang/String;

.field private static final PROPERTY_NAME_SELECTION:Ljava/lang/String; = "name LIKE ?"

.field private static final PROPERTY_PROJECTION:[Ljava/lang/String;

.field private static final SHARED_PREFS:Ljava/lang/String; = "session_prefs"

.field private static final STORAGE_DIRECTORY:Ljava/lang/String;

.field private static final SYSPROP_CURRENT_NETWORKCODE:Ljava/lang/String; = "ro.cdma.home.operator.numeric"

.field private static final SYSPROP_DEFAULT_NETWORKCODE:Ljava/lang/String; = "ro.cdma.default_numeric"

.field private static final XML_BACKUP_FILE:Ljava/io/File;

.field public static final XML_FILE:Ljava/io/File;

.field private static final XML_TAG_CHAMELEON_DATA:Ljava/lang/String; = "ChameleonData"

.field static sBlockBootupRollback:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sSingleton:Lcom/samsung/sprint/chameleon/ChameleonHelper;


# instance fields
.field private mAppsEnabler:Lcom/samsung/sprint/chameleon/enabledapps/GenericAppsEnabler;

.field private mCachedChameleonProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedUnknownProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDatabaseHelper:Lcom/samsung/sprint/chameleon/SprintDatabaseHelper;

.field private mMasterFileCheckDone:Z

.field private mXmlValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-static {}, Lcom/samsung/sprint/chameleon/ChameleonContract;->getStorageDirectory()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->STORAGE_DIRECTORY:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/sprint/chameleon/ChameleonHelper;->STORAGE_DIRECTORY:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "chameleon.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->XML_FILE:Ljava/io/File;

    .line 63
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/sprint/chameleon/ChameleonHelper;->STORAGE_DIRECTORY:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "chameleon.xml."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->XML_BACKUP_FILE:Ljava/io/File;

    .line 71
    new-array v0, v6, [Ljava/lang/String;

    .line 72
    const-string v1, "name"

    aput-object v1, v0, v3

    .line 73
    const-string v1, "value"

    aput-object v1, v0, v4

    .line 74
    const-string v1, "reset_flag"

    aput-object v1, v0, v5

    .line 71
    sput-object v0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->PROPERTY_PROJECTION:[Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->sBlockBootupRollback:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 104
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    .line 105
    const-string v1, "SPH-L710"

    aput-object v1, v0, v3

    const-string v1, "SPH-L300"

    aput-object v1, v0, v4

    const-string v1, "SPH-M830"

    aput-object v1, v0, v5

    const-string v1, "SPH-P500"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "SPH-L900"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SPH-M840"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 106
    const-string v2, "SPH-L500"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SPH-P600"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SPH-L720"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SPH-L600"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SPH-L520"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SPH-L720T"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 107
    const-string v2, "SM-N900P"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SM-T217S"

    aput-object v2, v0, v1

    .line 104
    sput-object v0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->PRIO_TO_V1_7_MODELS:[Ljava/lang/String;

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mCachedChameleonProperties:Ljava/util/HashMap;

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mCachedUnknownProperties:Ljava/util/HashMap;

    .line 101
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mMasterFileCheckDone:Z

    .line 123
    iput-object p1, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mContext:Landroid/content/Context;

    .line 124
    invoke-static {p1}, Lcom/samsung/sprint/chameleon/SprintDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/sprint/chameleon/SprintDatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mDatabaseHelper:Lcom/samsung/sprint/chameleon/SprintDatabaseHelper;

    .line 125
    sget-object v1, Lcom/samsung/sprint/chameleon/ChameleonHelper;->PRIO_TO_V1_7_MODELS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    new-instance v1, Lcom/samsung/sprint/chameleon/enabledapps/AppsEnabler_v1_5;

    invoke-direct {v1}, Lcom/samsung/sprint/chameleon/enabledapps/AppsEnabler_v1_5;-><init>()V

    .line 125
    :goto_0
    iput-object v1, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mAppsEnabler:Lcom/samsung/sprint/chameleon/enabledapps/GenericAppsEnabler;

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    .local v0, "userIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/sprint/chameleon/UserAddedReceiver;

    invoke-direct {v2}, Lcom/samsung/sprint/chameleon/UserAddedReceiver;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    return-void

    .line 126
    .end local v0    # "userIntentFilter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v1, Lcom/samsung/sprint/chameleon/enabledapps/AppsEnabler;

    invoke-direct {v1}, Lcom/samsung/sprint/chameleon/enabledapps/AppsEnabler;-><init>()V

    goto :goto_0
.end method

.method private commitChameleonFiles(Ljava/util/HashMap;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sprint/chameleon/ChameleonNode$FileNodes;->commitFiles(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private commitToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)I
    .locals 2
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 307
    .local p2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/Bundle;>;"
    const/4 v0, 0x0

    .line 309
    .local v0, "result":I
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    invoke-direct {p0, p1, p2}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->writeDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)I

    move-result v0

    .line 313
    :cond_0
    return v0
.end method

.method private commitToXml(Ljava/util/Map;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/Bundle;>;"
    const/4 v6, 0x0

    .line 255
    .local v6, "result":I
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 256
    invoke-direct {p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->ensureXmlLoaded()I

    .line 258
    const/4 v1, 0x0

    .line 259
    .local v1, "isEnabledAppsNodeIncluded":Z
    const/4 v5, 0x0

    .line 260
    .local v5, "refreshMasterFileWithoutEnabledAppsNode":Z
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 287
    if-eqz v5, :cond_5

    if-nez v1, :cond_5

    .line 292
    iget-object v8, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mXmlValues:Ljava/util/HashMap;

    invoke-static {v8, v9}, Lcom/samsung/sprint/chameleon/enabledapps/EnabledAppsMatrixHandler;->updateEnabledAppsFromMasterFile(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v7

    .line 293
    .local v7, "updateResult":Z
    if-nez v7, :cond_5

    .line 294
    const/4 v8, 0x6

    const-string v9, "Failed to update enabled apps from master file using current network code."

    invoke-static {v8, v9}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V

    .line 296
    const/4 v8, 0x1

    .line 303
    .end local v1    # "isEnabledAppsNodeIncluded":Z
    .end local v5    # "refreshMasterFileWithoutEnabledAppsNode":Z
    .end local v7    # "updateResult":Z
    :goto_1
    return v8

    .line 260
    .restart local v1    # "isEnabledAppsNodeIncluded":Z
    .restart local v5    # "refreshMasterFileWithoutEnabledAppsNode":Z
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 261
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 262
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 264
    .local v4, "property":Landroid/os/Bundle;
    invoke-static {v2}, Lcom/samsung/sprint/chameleon/ChameleonNode;->getByName(Ljava/lang/String;)Lcom/samsung/sprint/chameleon/ChameleonNode;

    move-result-object v3

    .line 265
    .local v3, "node":Lcom/samsung/sprint/chameleon/ChameleonNode;
    sget-object v9, Lcom/samsung/sprint/chameleon/ChameleonNode;->ENABLE_APP_APPLIST:Lcom/samsung/sprint/chameleon/ChameleonNode;

    invoke-virtual {v9, v3}, Lcom/samsung/sprint/chameleon/ChameleonNode;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 269
    iget-object v9, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mXmlValues:Ljava/util/HashMap;

    invoke-static {v9}, Lcom/samsung/sprint/chameleon/enabledapps/EnabledAppsMatrixHandler;->updateEnabledAppsFromPayload(Ljava/util/Map;)Z

    .line 270
    const/4 v1, 0x1

    goto :goto_0

    .line 271
    :cond_1
    const-string v9, "value"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    .line 272
    iget-object v9, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mXmlValues:Ljava/util/HashMap;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 274
    :cond_2
    sget-object v9, Lcom/samsung/sprint/chameleon/ChameleonNode;->NETWORK_CODE:Lcom/samsung/sprint/chameleon/ChameleonNode;

    invoke-virtual {v9, v3}, Lcom/samsung/sprint/chameleon/ChameleonNode;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 275
    sget-object v9, Lcom/samsung/sprint/chameleon/ChameleonNode;->CARRIER_ID:Lcom/samsung/sprint/chameleon/ChameleonNode;

    invoke-virtual {v9, v3}, Lcom/samsung/sprint/chameleon/ChameleonNode;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 282
    :cond_3
    const/4 v5, 0x1

    .line 284
    :cond_4
    iget-object v9, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mXmlValues:Ljava/util/HashMap;

    invoke-virtual {v9, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 300
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "node":Lcom/samsung/sprint/chameleon/ChameleonNode;
    .end local v4    # "property":Landroid/os/Bundle;
    :cond_5
    iget-object v8, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mXmlValues:Ljava/util/HashMap;

    invoke-direct {p0, v8}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->writeXml(Ljava/util/HashMap;)I

    move-result v6

    .end local v1    # "isEnabledAppsNodeIncluded":Z
    .end local v5    # "refreshMasterFileWithoutEnabledAppsNode":Z
    :cond_6
    move v8, v6

    .line 303
    goto :goto_1
.end method

.method private copyFile(Landroid/os/Bundle;Lcom/samsung/sprint/chameleon/ChameleonNode$FileNodes;Z)I
    .locals 16
    .param p1, "fromProperty"    # Landroid/os/Bundle;
    .param p2, "toNode"    # Lcom/samsung/sprint/chameleon/ChameleonNode$FileNodes;
    .param p3, "overwriteOriginal"    # Z

    .prologue
    .line 681
    const/4 v12, 0x3

    const-string v13, "Attempting to copy file"

    invoke-static {v12, v13}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V

    .line 683
    const-string v12, "value"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 684
    .local v8, "propertyValue":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 685
    .local v7, "fromFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 686
    const/4 v12, 0x6

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "File does not exist: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V

    .line 687
    const/4 v9, 0x2

    .line 731
    :cond_0
    :goto_0
    return v9

    .line 692
    :cond_1
    invoke-static {}, Lcom/samsung/sprint/chameleon/ChameleonContract;->getStorageDirectory()Ljava/lang/String;

    move-result-object v2

    .line 693
    .local v2, "currentDir":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/sprint/chameleon/ChameleonNode$FileNodes;->getRelativePath()Ljava/lang/String;

    move-result-object v12

    const-string v13, "/"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 694
    .local v5, "directories":[Ljava/lang/String;
    array-length v13, v5

    const/4 v12, 0x0

    :goto_1
    if-lt v12, v13, :cond_2

    .line 705
    const/4 v9, 0x0

    .line 706
    .local v9, "result":I
    if-eqz p3, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/sprint/chameleon/ChameleonNode$FileNodes;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 707
    .local v11, "toFilePath":Ljava/lang/String;
    :goto_2
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 708
    .local v10, "toFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/samsung/sprint/chameleon/ChameleonContract;->getStorageDirectory()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 710
    const/4 v12, 0x3

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Moving "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V

    .line 711
    invoke-virtual {v7, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v9, 0x0

    .line 718
    :goto_3
    if-nez v9, :cond_0

    .line 719
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Ljava/io/File;->setReadable(ZZ)Z

    .line 721
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/sprint/chameleon/ChameleonNode$FileNodes;->shouldReportFilename()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 722
    new-instance v1, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/sprint/chameleon/ChameleonNode$FileNodes;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 723
    .local v1, "chameleonFile":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 724
    .local v6, "filePathUri":Ljava/lang/String;
    const/4 v12, 0x3

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Saving filepath: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V

    .line 725
    const-string v12, "value"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 694
    .end local v1    # "chameleonFile":Ljava/io/File;
    .end local v6    # "filePathUri":Ljava/lang/String;
    .end local v9    # "result":I
    .end local v10    # "toFile":Ljava/io/File;
    .end local v11    # "toFilePath":Ljava/lang/String;
    :cond_2
    aget-object v4, v5, v12

    .line 695
    .local v4, "dir":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 696
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 697
    .local v3, "currentDirFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v14

    if-nez v14, :cond_3

    .line 698
    const/4 v12, 0x6

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Could not create parent directory: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 698
    invoke-static {v12, v13}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V

    .line 700
    const/4 v9, 0x2

    goto/16 :goto_0

    .line 702
    :cond_3
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 694
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 706
    .end local v3    # "currentDirFile":Ljava/io/File;
    .end local v4    # "dir":Ljava/lang/String;
    .restart local v9    # "result":I
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/sprint/chameleon/ChameleonNode$FileNodes;->getNewAbsolutePath()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 711
    .restart local v10    # "toFile":Ljava/io/File;
    .restart local v11    # "toFilePath":Ljava/lang/String;
    :cond_5
    const/4 v9, 0x2

    goto/16 :goto_3

    .line 714
    :cond_6
    const/4 v12, 0x3

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Copying "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V

    .line 715
    invoke-static {v7, v10}, Lcom/samsung/sprint/chameleon/Utilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v9, 0x0

    :goto_4
    goto/16 :goto_3

    :cond_7
    const/4 v9, 0x2

    goto :goto_4

    .line 727
    :cond_8
    const-string v12, "value"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/sprint/chameleon/ChameleonNode$FileNodes;->getParentDirectory()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private copyFileIfNeeded(Landroid/os/Bundle;)I
    .locals 6
    .param p1, "property"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 655
    const-string v4, "name"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/sprint/chameleon/ChameleonNode$FileNodes;->getByName(Ljava/lang/String;)Lcom/samsung/sprint/chameleon/ChameleonNode$FileNodes;

    move-result-object v0

    .line 656
    .local v0, "node":Lcom/samsung/sprint/chameleon/ChameleonNode$FileNodes;
    if-nez v0, :cond_0

    .line 670
    :goto_0
    return v3

    .line 660
    :cond_0
    const-string v4, "value"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 662
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 663
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 665
    .local v1, "uri":Landroid/net/Uri;
    const-string v4, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 666
    invoke-direct {p0, p1, v0, v3}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->copyFile(Landroid/os/Bundle;Lcom/samsung/sprint/chameleon/ChameleonNode$FileNodes;Z)I

    move-result v3

    goto :goto_0

    .line 670
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v3, 0x2

    goto :goto_0
.end method

.method private declared-synchronized ensureXmlLoaded()I
    .locals 3

    .prologue
    .line 165
    monitor-enter p0

    const/4 v0, 0x0

    .line 167
    .local v0, "result":I
    :try_start_0
    iget-object v1, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mXmlValues:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mXmlValues:Ljava/util/HashMap;

    .line 169
    iget-object v1, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mXmlValues:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->readXml(Ljava/util/Map;)I

    move-result v0

    .line 170
    if-eqz v0, :cond_0

    .line 171
    const/4 v1, 0x6

    const-string v2, "Error loading XML file"

    invoke-static {v1, v2}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :cond_0
    monitor-exit p0

    return v0

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/sprint/chameleon/ChameleonHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    const-class v1, Lcom/samsung/sprint/chameleon/ChameleonHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->sSingleton:Lcom/samsung/sprint/chameleon/ChameleonHelper;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/samsung/sprint/chameleon/ChameleonHelper;

    invoke-direct {v0, p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->sSingleton:Lcom/samsung/sprint/chameleon/ChameleonHelper;

    .line 115
    sget-object v0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->sSingleton:Lcom/samsung/sprint/chameleon/ChameleonHelper;

    iget-object v0, v0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mDatabaseHelper:Lcom/samsung/sprint/chameleon/SprintDatabaseHelper;

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->sSingleton:Lcom/samsung/sprint/chameleon/ChameleonHelper;

    .line 119
    :cond_0
    sget-object v0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->sSingleton:Lcom/samsung/sprint/chameleon/ChameleonHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized readXml(Ljava/util/Map;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 760
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/Bundle;>;"
    monitor-enter p0

    :try_start_0
    sget-object v14, Lcom/samsung/sprint/chameleon/ChameleonHelper;->XML_FILE:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 761
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v13

    .line 762
    .local v13, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    .line 764
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    sget-object v14, Lcom/samsung/sprint/chameleon/ChameleonHelper;->XML_FILE:Ljava/io/File;

    invoke-direct {v6, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 765
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_2
    const-string v14, "utf-8"

    invoke-interface {v13, v6, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 767
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v4

    .line 768
    .local v4, "event":I
    :goto_0
    const/4 v14, 0x1

    if-ne v4, v14, :cond_0

    .line 825
    const/4 v14, 0x1

    :try_start_3
    new-array v14, v14, [Ljava/io/Closeable;

    const/4 v15, 0x0

    .line 826
    aput-object v6, v14, v15

    invoke-static {v14}, Lcom/samsung/sprint/chameleon/Utilities;->closeQuietly([Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 832
    .end local v4    # "event":I
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :goto_1
    const/4 v14, 0x0

    :goto_2
    monitor-exit p0

    return v14

    .line 769
    .restart local v4    # "event":I
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    const/4 v14, 0x2

    if-ne v4, v14, :cond_1

    .line 770
    :try_start_4
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 773
    .local v11, "tag":Ljava/lang/String;
    const-string v14, "ChameleonData"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 774
    move-object v1, v11

    .line 775
    .local v1, "cscCategory":Ljava/lang/String;
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 778
    :goto_3
    const/4 v14, 0x1

    if-ne v4, v14, :cond_2

    .line 818
    .end local v1    # "cscCategory":Ljava/lang/String;
    .end local v11    # "tag":Ljava/lang/String;
    :cond_1
    :goto_4
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    .line 779
    .restart local v1    # "cscCategory":Ljava/lang/String;
    .restart local v11    # "tag":Ljava/lang/String;
    :cond_2
    const/4 v14, 0x2

    if-ne v4, v14, :cond_5

    .line 780
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 781
    .local v2, "cscName":Ljava/lang/String;
    const-string v14, "EnabledApps"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 783
    new-instance v7, Lcom/samsung/sprint/chameleon/enabledapps/EnabledAppsNode;

    invoke-direct {v7, v2}, Lcom/samsung/sprint/chameleon/enabledapps/EnabledAppsNode;-><init>(Ljava/lang/String;)V

    .line 784
    .local v7, "node":Lcom/samsung/sprint/chameleon/enabledapps/EnabledAppsNode;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 786
    .local v10, "property":Landroid/os/Bundle;
    const-string v14, "name"

    invoke-virtual {v10, v14, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v14, "value"

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    invoke-virtual {v7}, Lcom/samsung/sprint/chameleon/enabledapps/EnabledAppsNode;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    .end local v2    # "cscName":Ljava/lang/String;
    .end local v7    # "node":Lcom/samsung/sprint/chameleon/enabledapps/EnabledAppsNode;
    .end local v10    # "property":Landroid/os/Bundle;
    :cond_3
    :goto_5
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_3

    .line 792
    .restart local v2    # "cscName":Ljava/lang/String;
    :cond_4
    invoke-static {v1, v2}, Lcom/samsung/sprint/chameleon/ChameleonNode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/sprint/chameleon/ChameleonNode;

    move-result-object v12

    .line 793
    .local v12, "type":Lcom/samsung/sprint/chameleon/ChameleonNode;
    sget-object v14, Lcom/samsung/sprint/chameleon/ChameleonNode;->UNKNOWN_PROPERTY:Lcom/samsung/sprint/chameleon/ChameleonNode;

    if-eq v12, v14, :cond_3

    .line 794
    invoke-virtual {v12}, Lcom/samsung/sprint/chameleon/ChameleonNode;->getName()Ljava/lang/String;

    move-result-object v8

    .line 795
    .local v8, "nodeName":Ljava/lang/String;
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    .line 797
    .local v9, "nodeValue":Ljava/lang/String;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 798
    .restart local v10    # "property":Landroid/os/Bundle;
    const-string v14, "name"

    invoke-virtual {v10, v14, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const-string v14, "value"

    invoke-virtual {v10, v14, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    move-object/from16 v0, p1

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    sget-object v14, Lcom/samsung/sprint/chameleon/ChameleonNode;->RESERVED_ENABLE_APP_MATRIX_VERSION:Lcom/samsung/sprint/chameleon/ChameleonNode;

    if-ne v14, v12, :cond_3

    .line 803
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Lcom/samsung/sprint/chameleon/enabledapps/EnabledAppsMatrixHandler;->setMatrixVersionInXml(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    .line 821
    .end local v1    # "cscCategory":Ljava/lang/String;
    .end local v2    # "cscName":Ljava/lang/String;
    .end local v4    # "event":I
    .end local v8    # "nodeName":Ljava/lang/String;
    .end local v9    # "nodeValue":Ljava/lang/String;
    .end local v10    # "property":Landroid/os/Bundle;
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":Lcom/samsung/sprint/chameleon/ChameleonNode;
    :catch_0
    move-exception v3

    move-object v5, v6

    .line 822
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :goto_6
    const/4 v14, 0x6

    :try_start_5
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Error reading "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v16, Lcom/samsung/sprint/chameleon/ChameleonHelper;->XML_FILE:Ljava/io/File;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v3}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 823
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 825
    const/4 v14, 0x1

    :try_start_6
    new-array v14, v14, [Ljava/io/Closeable;

    const/4 v15, 0x0

    .line 826
    aput-object v5, v14, v15

    invoke-static {v14}, Lcom/samsung/sprint/chameleon/Utilities;->closeQuietly([Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 824
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 808
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "cscCategory":Ljava/lang/String;
    .restart local v4    # "event":I
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "tag":Ljava/lang/String;
    :cond_5
    const/4 v14, 0x3

    if-ne v4, v14, :cond_3

    :try_start_7
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v14

    if-eqz v14, :cond_3

    goto/16 :goto_4

    .line 825
    .end local v1    # "cscCategory":Ljava/lang/String;
    .end local v4    # "event":I
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "tag":Ljava/lang/String;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v14

    :goto_7
    const/4 v15, 0x1

    :try_start_8
    new-array v15, v15, [Ljava/io/Closeable;

    const/16 v16, 0x0

    .line 826
    aput-object v5, v15, v16

    invoke-static {v15}, Lcom/samsung/sprint/chameleon/Utilities;->closeQuietly([Ljava/io/Closeable;)V

    .line 827
    throw v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 760
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v14

    monitor-exit p0

    throw v14

    .line 829
    :cond_6
    const/4 v14, 0x3

    :try_start_9
    const-string v15, "No XML file found"

    invoke-static {v14, v15}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_1

    .line 825
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_2
    move-exception v14

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .line 821
    :catch_1
    move-exception v3

    goto :goto_6
.end method

.method private retrieveFromDatabase(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 18
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mDatabaseHelper:Lcom/samsung/sprint/chameleon/SprintDatabaseHelper;

    if-nez v2, :cond_1

    .line 494
    const/4 v15, 0x0

    .line 531
    :cond_0
    :goto_0
    return-object v15

    .line 497
    :cond_1
    const/4 v1, 0x0

    .line 498
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 500
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mDatabaseHelper:Lcom/samsung/sprint/chameleon/SprintDatabaseHelper;

    invoke-virtual {v2}, Lcom/samsung/sprint/chameleon/SprintDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 501
    const-string v2, "properties"

    sget-object v3, Lcom/samsung/sprint/chameleon/ChameleonHelper;->PROPERTY_PROJECTION:[Ljava/lang/String;

    .line 502
    const-string v4, "name LIKE ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 503
    const-string v8, "name"

    .line 501
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 505
    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 506
    const-string v2, "name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 507
    .local v11, "idxName":I
    const-string v2, "value"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 508
    .local v13, "idxValue":I
    const-string v2, "reset_flag"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 510
    .local v12, "idxReset":I
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 511
    .local v14, "name":Ljava/lang/String;
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 512
    .local v17, "value":Ljava/lang/String;
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 514
    .local v16, "reset":I
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 515
    .local v15, "property":Landroid/os/Bundle;
    const-string v2, "name"

    invoke-virtual {v15, v2, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v2, "value"

    move-object/from16 v0, v17

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v2, "reset_flag"

    move/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    if-eqz v9, :cond_2

    .line 524
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 526
    :cond_2
    if-eqz v1, :cond_0

    .line 527
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 520
    .end local v11    # "idxName":I
    .end local v12    # "idxReset":I
    .end local v13    # "idxValue":I
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "property":Landroid/os/Bundle;
    .end local v16    # "reset":I
    .end local v17    # "value":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 521
    .local v10, "e":Ljava/lang/Exception;
    const/4 v2, 0x6

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in querying for property : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    if-eqz v9, :cond_3

    .line 524
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 526
    :cond_3
    if-eqz v1, :cond_4

    .line 527
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 531
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 522
    :catchall_0
    move-exception v2

    .line 523
    if-eqz v9, :cond_5

    .line 524
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 526
    :cond_5
    if-eqz v1, :cond_6

    .line 527
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 529
    :cond_6
    throw v2

    .line 523
    :cond_7
    if-eqz v9, :cond_8

    .line 524
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 526
    :cond_8
    if-eqz v1, :cond_4

    .line 527
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1
.end method

.method private declared-synchronized revertXml()I
    .locals 2

    .prologue
    .line 631
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    const-string v1, "Reverting file to backup!"

    invoke-static {v0, v1}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mXmlValues:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->XML_BACKUP_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 634
    :cond_0
    const/4 v0, 0x0

    .line 643
    :goto_0
    monitor-exit p0

    return v0

    .line 637
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mXmlValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 639
    invoke-direct {p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->xmlFileRenameFromBackup()Z

    move-result v0

    if-nez v0, :cond_2

    .line 640
    const/4 v0, 0x1

    goto :goto_0

    .line 643
    :cond_2
    iget-object v0, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mXmlValues:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->readXml(Ljava/util/Map;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 631
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private saveNetworkCodeIntoCache()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 1056
    const-string v5, "ro.cdma.home.operator.numeric"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1057
    .local v0, "currentNumeric":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Current Network code: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V

    .line 1058
    const-string v5, "ro.cdma.default_numeric"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1059
    .local v1, "defaultNumeric":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Default Network code: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V

    .line 1060
    const-string v2, "310000"

    .line 1061
    .local v2, "networkCode":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1062
    move-object v2, v0

    .line 1067
    :cond_0
    :goto_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1068
    .local v4, "property":Landroid/os/Bundle;
    sget-object v5, Lcom/samsung/sprint/chameleon/ChameleonNode;->NETWORK_CODE:Lcom/samsung/sprint/chameleon/ChameleonNode;

    invoke-virtual {v5}, Lcom/samsung/sprint/chameleon/ChameleonNode;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1069
    .local v3, "nodeName":Ljava/lang/String;
    const-string v5, "name"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    const-string v5, "value"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v5, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mXmlValues:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Save network code into xml: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V

    .line 1073
    return-void

    .line 1063
    .end local v3    # "nodeName":Ljava/lang/String;
    .end local v4    # "property":Landroid/os/Bundle;
    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1064
    move-object v2, v1

    goto :goto_0
.end method

.method private setIsInSessionPref(Z)V
    .locals 5
    .param p1, "sessionInProgress"    # Z

    .prologue
    .line 148
    iget-object v2, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mContext:Landroid/content/Context;

    const-string v3, "session_prefs"

    .line 149
    const/4 v4, 0x0

    .line 148
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 150
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 151
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "is_in_session"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 152
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 153
    return-void
.end method

.method private toContentValues(Landroid/os/Bundle;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "property"    # Landroid/os/Bundle;

    .prologue
    .line 741
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 742
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v1, "value"

    const-string v2, "value"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string v1, "reset_flag"

    const-string v2, "reset_flag"

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 746
    const-string v1, "modified_date"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 747
    const-string v1, "modified_date"

    const-string v2, "modified_date"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 750
    :cond_0
    return-object v0
.end method

.method private declared-synchronized writeDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)I
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 836
    .local p2, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/Bundle;>;"
    monitor-enter p0

    const/4 v2, 0x0

    .line 839
    .local v2, "result":I
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 857
    :goto_0
    monitor-exit p0

    return v2

    .line 839
    :cond_1
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 840
    .local v5, "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    invoke-direct {p0, v6}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->toContentValues(Landroid/os/Bundle;)Landroid/content/ContentValues;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 843
    .local v0, "cv":Landroid/content/ContentValues;
    :try_start_2
    const-string v6, "properties"

    const/4 v8, 0x0

    const/4 v9, 0x5

    .line 842
    invoke-virtual {p1, v6, v8, v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v3

    .line 845
    .local v3, "rowId":J
    const-wide/16 v8, 0x0

    cmp-long v6, v3, v8

    if-ltz v6, :cond_2

    const/4 v2, 0x0

    .line 846
    :goto_1
    if-eqz v2, :cond_0

    goto :goto_0

    .line 845
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 849
    .end local v3    # "rowId":J
    :catch_0
    move-exception v1

    .line 850
    .local v1, "e":Ljava/lang/Exception;
    const/4 v7, 0x6

    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v6, "Failed to write "

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 851
    const-string v8, " into db: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 850
    invoke-static {v7, v6}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 852
    const/4 v2, 0x1

    .line 853
    goto :goto_0

    .line 836
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private declared-synchronized writeXml(Ljava/util/HashMap;)I
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 867
    .local p1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Bundle;>;"
    monitor-enter p0

    :try_start_0
    sget-object v21, Lcom/samsung/sprint/chameleon/ChameleonHelper;->XML_FILE:Ljava/io/File;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 868
    invoke-direct/range {p0 .. p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->xmlBackupFileDelete()V

    .line 869
    invoke-direct/range {p0 .. p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->xmlFileRenameToBackup()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v21

    if-nez v21, :cond_1

    .line 870
    const/16 v16, 0x1

    .line 975
    :cond_0
    :goto_0
    monitor-exit p0

    return v16

    .line 874
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v20

    .line 875
    .local v20, "xmls":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v9, 0x0

    .line 876
    .local v9, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 877
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    const/16 v16, 0x0

    .line 880
    .local v16, "result":I
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 881
    .local v6, "cscValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_2
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v21

    if-nez v21, :cond_6

    .line 917
    :try_start_2
    new-instance v10, Ljava/io/FileOutputStream;

    sget-object v21, Lcom/samsung/sprint/chameleon/ChameleonHelper;->XML_FILE:Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 918
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v10, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 919
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    :try_start_4
    const-string v21, "utf-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 920
    const-string v21, "utf-8"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 921
    const-string v21, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v22, 0x1

    invoke-interface/range {v20 .. v22}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 922
    const/16 v21, 0x0

    const-string v22, "ChameleonData"

    invoke-interface/range {v20 .. v22}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 925
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_a

    .line 938
    const/16 v21, 0x0

    const-string v22, "ChameleonData"

    invoke-interface/range {v20 .. v22}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 939
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 944
    if-eqz v3, :cond_3

    .line 946
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 952
    :cond_3
    :goto_3
    if-eqz v10, :cond_f

    .line 954
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .line 961
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :cond_4
    :goto_4
    const/16 v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 962
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->revertXml()I

    .line 967
    :goto_5
    sget-object v21, Lcom/samsung/sprint/chameleon/ChameleonHelper;->XML_FILE:Ljava/io/File;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 968
    sget-object v21, Lcom/samsung/sprint/chameleon/ChameleonHelper;->XML_FILE:Ljava/io/File;

    const/16 v22, 0x1

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Ljava/io/File;->setReadable(ZZ)Z

    .line 971
    :cond_5
    invoke-static {}, Lcom/samsung/sprint/chameleonjni/ChameleonJni;->computeChameleonXmlVerification()Z

    move-result v21

    if-nez v21, :cond_0

    .line 972
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 881
    :cond_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 882
    .local v18, "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 885
    .local v12, "keyString":Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/sprint/chameleon/enabledapps/EnabledAppsNode;->getByName(Ljava/lang/String;)Lcom/samsung/sprint/chameleon/enabledapps/EnabledAppsNode;

    move-result-object v13

    .line 886
    .local v13, "node":Lcom/samsung/sprint/chameleon/enabledapps/EnabledAppsNode;
    if-eqz v13, :cond_8

    .line 888
    const-string v4, "EnabledApps"

    .line 889
    .local v4, "cscCategory":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/samsung/sprint/chameleon/enabledapps/EnabledAppsNode;->getCscName()Ljava/lang/String;

    move-result-object v5

    .line 890
    .local v5, "cscName":Ljava/lang/String;
    const/16 v21, 0x3

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Write Enabled app: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V

    .line 906
    :goto_6
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    .line 907
    .local v11, "innerHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v11, :cond_7

    .line 908
    new-instance v11, Ljava/util/HashMap;

    .end local v11    # "innerHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 909
    .restart local v11    # "innerHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v6, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    :cond_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/Bundle;

    const-string v23, "value"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 913
    .local v15, "propertyValue":Ljava/lang/String;
    invoke-virtual {v11, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 867
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "cscCategory":Ljava/lang/String;
    .end local v5    # "cscName":Ljava/lang/String;
    .end local v6    # "cscValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "innerHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "keyString":Ljava/lang/String;
    .end local v13    # "node":Lcom/samsung/sprint/chameleon/enabledapps/EnabledAppsNode;
    .end local v15    # "propertyValue":Ljava/lang/String;
    .end local v16    # "result":I
    .end local v18    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v20    # "xmls":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v21

    monitor-exit p0

    throw v21

    .line 893
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "cscValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "keyString":Ljava/lang/String;
    .restart local v13    # "node":Lcom/samsung/sprint/chameleon/enabledapps/EnabledAppsNode;
    .restart local v16    # "result":I
    .restart local v18    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .restart local v20    # "xmls":Lorg/xmlpull/v1/XmlSerializer;
    :cond_8
    :try_start_8
    invoke-static {v12}, Lcom/samsung/sprint/chameleon/ChameleonNode;->getByName(Ljava/lang/String;)Lcom/samsung/sprint/chameleon/ChameleonNode;

    move-result-object v17

    .line 894
    .local v17, "type":Lcom/samsung/sprint/chameleon/ChameleonNode;
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/sprint/chameleon/ChameleonNode;->getCscCategory()Ljava/lang/String;

    move-result-object v4

    .line 896
    .restart local v4    # "cscCategory":Ljava/lang/String;
    sget-object v21, Lcom/samsung/sprint/chameleon/ChameleonNode;->UNKNOWN_PROPERTY:Lcom/samsung/sprint/chameleon/ChameleonNode;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_2

    if-eqz v4, :cond_2

    .line 898
    sget-object v21, Lcom/samsung/sprint/chameleon/ChameleonNode;->RESERVED_ENABLE_APP_MATRIX_VERSION:Lcom/samsung/sprint/chameleon/ChameleonNode;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 900
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/Bundle;

    const-string v23, "value"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 901
    .local v19, "version":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/sprint/chameleon/enabledapps/EnabledAppsMatrixHandler;->setMatrixVersionInXml(I)V

    .line 903
    .end local v19    # "version":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/sprint/chameleon/ChameleonNode;->getCscName()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v5

    .restart local v5    # "cscName":Ljava/lang/String;
    goto :goto_6

    .line 925
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "cscCategory":Ljava/lang/String;
    .end local v5    # "cscName":Ljava/lang/String;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "keyString":Ljava/lang/String;
    .end local v13    # "node":Lcom/samsung/sprint/chameleon/enabledapps/EnabledAppsNode;
    .end local v17    # "type":Lcom/samsung/sprint/chameleon/ChameleonNode;
    .end local v18    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :cond_a
    :try_start_9
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 926
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 927
    .restart local v4    # "cscCategory":Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 928
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_c

    .line 935
    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_2

    .line 940
    .end local v4    # "cscCategory":Ljava/lang/String;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_0
    move-exception v7

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .line 941
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .local v7, "e":Ljava/io/IOException;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :goto_8
    const/16 v21, 0x6

    :try_start_a
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Error writing "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v23, Lcom/samsung/sprint/chameleon/ChameleonHelper;->XML_FILE:Ljava/io/File;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 942
    const/16 v16, 0x1

    .line 944
    if-eqz v2, :cond_b

    .line 946
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 952
    :cond_b
    :goto_9
    if-eqz v9, :cond_4

    .line 954
    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_4

    .line 955
    :catch_1
    move-exception v7

    .line 956
    :try_start_d
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_4

    .line 928
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "cscCategory":Ljava/lang/String;
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :cond_c
    :try_start_e
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 929
    .local v14, "node":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 930
    .restart local v5    # "cscName":Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 931
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-interface/range {v20 .. v21}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 932
    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_7

    .line 943
    .end local v4    # "cscCategory":Ljava/lang/String;
    .end local v5    # "cscName":Ljava/lang/String;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v14    # "node":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1
    move-exception v21

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .line 944
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :goto_a
    if-eqz v2, :cond_d

    .line 946
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 952
    :cond_d
    :goto_b
    if-eqz v9, :cond_e

    .line 954
    :try_start_10
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 959
    :cond_e
    :goto_c
    :try_start_11
    throw v21

    .line 947
    .restart local v7    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 948
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 947
    .end local v7    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 948
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 955
    .end local v7    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 956
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 947
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v7

    .line 948
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 955
    .end local v7    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v7

    .line 956
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .end local v7    # "e":Ljava/io/IOException;
    :cond_f
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 964
    :cond_10
    sget-object v21, Lcom/samsung/sprint/chameleon/ChameleonHelper;->XML_FILE:Ljava/io/File;

    sget-object v22, Lcom/samsung/sprint/chameleon/ChameleonHelper;->XML_BACKUP_FILE:Ljava/io/File;

    invoke-static/range {v21 .. v22}, Lcom/samsung/sprint/chameleon/Utilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_5

    .line 943
    :catchall_2
    move-exception v21

    goto :goto_a

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v21

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_a

    .line 940
    :catch_7
    move-exception v7

    goto/16 :goto_8

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v7

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_8
.end method

.method private xmlBackupFileDelete()V
    .locals 4

    .prologue
    .line 979
    sget-object v1, Lcom/samsung/sprint/chameleon/ChameleonHelper;->XML_BACKUP_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 980
    .local v0, "result":Z
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete xml backup file result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V

    .line 981
    return-void
.end method

.method private xmlFileDelete()V
    .locals 4

    .prologue
    .line 984
    sget-object v1, Lcom/samsung/sprint/chameleon/ChameleonHelper;->XML_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 985
    .local v0, "result":Z
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "xmlFileDelete() result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V

    .line 986
    invoke-static {}, Lcom/samsung/sprint/chameleonjni/ChameleonJni;->computeChameleonXmlVerification()Z

    .line 987
    return-void
.end method

.method private xmlFileRenameFromBackup()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 995
    sget-object v2, Lcom/samsung/sprint/chameleon/ChameleonHelper;->XML_BACKUP_FILE:Ljava/io/File;

    sget-object v3, Lcom/samsung/sprint/chameleon/ChameleonHelper;->XML_FILE:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/sprint/chameleon/ChameleonHelper;->XML_FILE:Ljava/io/File;

    invoke-virtual {v2, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 996
    invoke-static {}, Lcom/samsung/sprint/chameleonjni/ChameleonJni;->computeChameleonXmlVerification()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 995
    goto :goto_0
.end method

.method private xmlFileRenameToBackup()Z
    .locals 2

    .prologue
    .line 990
    sget-object v0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->XML_FILE:Ljava/io/File;

    sget-object v1, Lcom/samsung/sprint/chameleon/ChameleonHelper;->XML_BACKUP_FILE:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    invoke-static {}, Lcom/samsung/sprint/chameleonjni/ChameleonJni;->computeChameleonXmlVerification()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 990
    goto :goto_0
.end method


# virtual methods
.method beginSession()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 142
    sget-object v0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->sBlockBootupRollback:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 144
    invoke-direct {p0, v1}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->setIsInSessionPref(Z)V

    .line 145
    return-void
.end method

.method clearSessionState()V
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->xmlBackupFileDelete()V

    .line 228
    iget-object v0, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mCachedChameleonProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sprint/chameleon/ChameleonNode$FileNodes;->deleteSessionFiles(Ljava/util/Collection;)V

    .line 230
    iget-object v0, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mCachedChameleonProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 231
    iget-object v0, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mCachedUnknownProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->setIsInSessionPref(Z)V

    .line 233
    return-void
.end method

.method commit()I
    .locals 6

    .prologue
    .line 184
    const/4 v1, 0x0

    .line 185
    .local v1, "result":I
    iget-object v3, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mDatabaseHelper:Lcom/samsung/sprint/chameleon/SprintDatabaseHelper;

    invoke-virtual {v3}, Lcom/samsung/sprint/chameleon/SprintDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 188
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 190
    iget-object v3, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mCachedChameleonProperties:Ljava/util/HashMap;

    invoke-direct {p0, v3}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->commitToXml(Ljava/util/Map;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 191
    if-eqz v1, :cond_1

    .line 207
    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->rollback()V

    .line 211
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 212
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v2, v1

    .line 220
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 195
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mCachedUnknownProperties:Ljava/util/HashMap;

    invoke-direct {p0, v0, v3}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->commitToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 196
    if-eqz v1, :cond_3

    .line 207
    if-eqz v1, :cond_2

    .line 208
    invoke-virtual {p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->rollback()V

    .line 211
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 212
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v2, v1

    .line 197
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 200
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mCachedChameleonProperties:Ljava/util/HashMap;

    invoke-direct {p0, v3}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->commitChameleonFiles(Ljava/util/HashMap;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .line 201
    if-eqz v1, :cond_5

    .line 207
    if-eqz v1, :cond_4

    .line 208
    invoke-virtual {p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->rollback()V

    .line 211
    :cond_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 212
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v2, v1

    .line 202
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 205
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_5
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 207
    if-eqz v1, :cond_6

    .line 208
    invoke-virtual {p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->rollback()V

    .line 211
    :cond_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 212
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 215
    if-nez v1, :cond_7

    .line 216
    iget-object v3, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mAppsEnabler:Lcom/samsung/sprint/chameleon/enabledapps/GenericAppsEnabler;

    .line 217
    iget-object v4, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mCachedChameleonProperties:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mXmlValues:Ljava/util/HashMap;

    .line 216
    invoke-virtual {v3, v4, v5}, Lcom/samsung/sprint/chameleon/enabledapps/GenericAppsEnabler;->setAppEnableStatesWithPayload(Ljava/util/Map;Ljava/util/Map;)I

    move-result v1

    :cond_7
    move v2, v1

    .line 220
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 206
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catchall_0
    move-exception v3

    .line 207
    if-eqz v1, :cond_8

    .line 208
    invoke-virtual {p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->rollback()V

    .line 211
    :cond_8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 212
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 213
    throw v3
.end method

.method getProperties(Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .param p1, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mDatabaseHelper:Lcom/samsung/sprint/chameleon/SprintDatabaseHelper;

    invoke-virtual {v2}, Lcom/samsung/sprint/chameleon/SprintDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 428
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 429
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 432
    .local v15, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :try_start_0
    const-string v2, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 436
    :cond_0
    const-string v2, "properties"

    sget-object v3, Lcom/samsung/sprint/chameleon/ChameleonHelper;->PROPERTY_PROJECTION:[Ljava/lang/String;

    .line 437
    const-string v4, "name LIKE ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 436
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 439
    if-eqz v9, :cond_1

    .line 440
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .local v16, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :try_start_1
    const-string v2, "name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 442
    .local v12, "idxName":I
    const-string v2, "value"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 443
    .local v14, "idxValue":I
    const-string v2, "reset_flag"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 445
    .local v13, "idxReset":I
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v15, v16

    .line 457
    .end local v12    # "idxName":I
    .end local v13    # "idxReset":I
    .end local v14    # "idxValue":I
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .restart local v15    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_1
    if-eqz v9, :cond_2

    .line 458
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 462
    :cond_2
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->ensureXmlLoaded()I

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mXmlValues:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 470
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 471
    return-object v15

    .line 446
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .restart local v12    # "idxName":I
    .restart local v13    # "idxReset":I
    .restart local v14    # "idxValue":I
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_4
    :try_start_2
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 447
    .local v17, "property":Landroid/os/Bundle;
    const-string v2, "name"

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v2, "value"

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v2, "reset_flag"

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 451
    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 454
    .end local v12    # "idxName":I
    .end local v13    # "idxReset":I
    .end local v14    # "idxValue":I
    .end local v17    # "property":Landroid/os/Bundle;
    :catch_0
    move-exception v10

    move-object/from16 v15, v16

    .line 455
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .local v10, "e":Ljava/lang/Exception;
    .restart local v15    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :goto_3
    const/4 v2, 0x6

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in querying for category : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 457
    if-eqz v9, :cond_2

    .line 458
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 456
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 457
    :goto_4
    if-eqz v9, :cond_5

    .line 458
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 460
    :cond_5
    throw v2

    .line 464
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 465
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 466
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 456
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :catchall_1
    move-exception v2

    move-object/from16 v15, v16

    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .restart local v15    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    goto :goto_4

    .line 454
    :catch_1
    move-exception v10

    goto :goto_3
.end method

.method getProperty(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->ensureXmlLoaded()I

    .line 481
    iget-object v0, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mXmlValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mXmlValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 486
    :goto_0
    return-object v0

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mXmlValues:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EnabledApps/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mXmlValues:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EnabledApps/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_0

    .line 486
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->retrieveFromDatabase(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getXmlProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1003
    invoke-direct {p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->ensureXmlLoaded()I

    .line 1004
    iget-object v0, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mXmlValues:Ljava/util/HashMap;

    return-object v0
.end method

.method public handleBootCompleted()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 586
    invoke-static {}, Lcom/samsung/sprint/chameleonjni/ChameleonJni;->checkPermission()I

    move-result v0

    .line 590
    .local v0, "changeResult":I
    if-ne v5, v0, :cond_0

    .line 591
    const/4 v3, 0x6

    const-string v4, "restored chameleon.xml permission to 644. rebooting..."

    invoke-static {v3, v4}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V

    .line 592
    iget-object v3, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 593
    .local v2, "pm":Landroid/os/PowerManager;
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 595
    .end local v2    # "pm":Landroid/os/PowerManager;
    :cond_0
    const/4 v3, -0x1

    if-eq v3, v0, :cond_1

    invoke-static {v5}, Lcom/samsung/sprint/chameleonjni/ChameleonJni;->verifyChameleonXml(Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 596
    :cond_1
    const/4 v3, 0x3

    const-string v4, "chameleon.xml verification failed. Deleting all data and doing SCRTN."

    invoke-static {v3, v4}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->removePayload()V

    .line 601
    iget-object v3, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mDatabaseHelper:Lcom/samsung/sprint/chameleon/SprintDatabaseHelper;

    invoke-virtual {v3}, Lcom/samsung/sprint/chameleon/SprintDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 602
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "properties"

    invoke-virtual {v1, v3, v6, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 603
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 604
    invoke-static {}, Lcom/samsung/sprint/chameleon/Utilities;->scrtn()V

    .line 624
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 609
    :cond_2
    iget-boolean v3, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mMasterFileCheckDone:Z

    if-nez v3, :cond_3

    .line 610
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->initializeAppsEnabledStatus(ZZ)V

    .line 617
    :cond_3
    sget-object v3, Lcom/samsung/sprint/chameleon/ChameleonHelper;->sBlockBootupRollback:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->isInSession()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 618
    invoke-virtual {p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->rollback()V

    .line 619
    invoke-virtual {p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->clearSessionState()V

    .line 623
    :cond_4
    sget-object v3, Lcom/samsung/sprint/chameleon/ChameleonHelper;->sBlockBootupRollback:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method public initializeAppsEnabledStatus(ZZ)V
    .locals 4
    .param p1, "alwaysEnableApps"    # Z
    .param p2, "checkMasterFileVer"    # Z

    .prologue
    const/4 v3, 0x6

    .line 1017
    invoke-direct {p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->ensureXmlLoaded()I

    .line 1018
    if-eqz p2, :cond_4

    .line 1019
    iget-object v1, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/sprint/chameleon/enabledapps/EnabledAppsMatrixHandler;->needUpdateMasterFile(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1022
    iget-object v1, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mXmlValues:Ljava/util/HashMap;

    .line 1021
    invoke-static {v1, v2}, Lcom/samsung/sprint/chameleon/enabledapps/EnabledAppsMatrixHandler;->updateEnabledAppsFromMasterFile(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v0

    .line 1023
    .local v0, "result":Z
    if-nez v0, :cond_1

    .line 1024
    const-string v1, "Failed to upgrade Master File."

    invoke-static {v3, v1}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V

    .line 1049
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mAppsEnabler:Lcom/samsung/sprint/chameleon/enabledapps/GenericAppsEnabler;

    iget-object v2, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mXmlValues:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Lcom/samsung/sprint/chameleon/enabledapps/GenericAppsEnabler;->initializeAppsEnabledStatus(Ljava/util/Map;)V

    .line 1050
    :goto_1
    return-void

    .line 1027
    .restart local v0    # "result":Z
    :cond_1
    iget-object v1, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mXmlValues:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/sprint/chameleon/ChameleonNode;->NETWORK_CODE:Lcom/samsung/sprint/chameleon/ChameleonNode;

    invoke-virtual {v2}, Lcom/samsung/sprint/chameleon/ChameleonNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1028
    invoke-direct {p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->saveNetworkCodeIntoCache()V

    .line 1032
    :cond_2
    iget-object v1, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mXmlValues:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->writeXml(Ljava/util/HashMap;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 1034
    const-string v1, "Failed to write to xml duringMaster file upgrade."

    invoke-static {v3, v1}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V

    goto :goto_0

    .line 1038
    :cond_3
    const/4 v1, 0x3

    const-string v2, "Master file is updated successfully."

    invoke-static {v1, v2}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V

    .line 1039
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mMasterFileCheckDone:Z

    .line 1041
    invoke-direct {p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->xmlBackupFileDelete()V

    goto :goto_0

    .line 1044
    .end local v0    # "result":Z
    :cond_4
    if-nez p1, :cond_0

    goto :goto_1
.end method

.method public isInSession()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 156
    iget-object v1, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mContext:Landroid/content/Context;

    const-string v2, "session_prefs"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 157
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "is_in_session"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method performClear(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 541
    if-nez p1, :cond_0

    .line 566
    :goto_0
    return-void

    .line 545
    :cond_0
    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Performing clear, flag: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->clearSessionState()V

    .line 549
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    .line 550
    invoke-direct {p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->xmlFileDelete()V

    .line 551
    invoke-direct {p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->xmlBackupFileDelete()V

    .line 552
    iget-object v2, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mDatabaseHelper:Lcom/samsung/sprint/chameleon/SprintDatabaseHelper;

    invoke-virtual {v2}, Lcom/samsung/sprint/chameleon/SprintDatabaseHelper;->close()V

    .line 553
    iget-object v2, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/samsung/sprint/chameleon/SprintDatabaseHelper;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 554
    invoke-static {}, Lcom/samsung/sprint/chameleon/ChameleonNode$FileNodes;->deleteAllFiles()V

    goto :goto_0

    .line 557
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "((reset_flag & "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") != 0)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 558
    .local v1, "selection":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mDatabaseHelper:Lcom/samsung/sprint/chameleon/SprintDatabaseHelper;

    invoke-virtual {v2}, Lcom/samsung/sprint/chameleon/SprintDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 560
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "properties"

    .line 562
    const/4 v3, 0x0

    .line 559
    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 564
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0
.end method

.method public removePayload()V
    .locals 4

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->clearSessionState()V

    .line 570
    invoke-direct {p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->xmlFileDelete()V

    .line 571
    invoke-static {}, Lcom/samsung/sprint/chameleon/ChameleonNode$FileNodes;->revertAllBackupFiles()V

    .line 572
    invoke-static {}, Lcom/samsung/sprint/chameleon/ChameleonNode$FileNodes;->deleteAllFiles()V

    .line 573
    iget-object v1, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mDatabaseHelper:Lcom/samsung/sprint/chameleon/SprintDatabaseHelper;

    invoke-virtual {v1}, Lcom/samsung/sprint/chameleon/SprintDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 574
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "properties"

    .line 575
    const-string v2, "name=\'Customization/CustID\'"

    const/4 v3, 0x0

    .line 574
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 576
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 577
    return-void
.end method

.method rollback()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->revertXml()I

    .line 240
    invoke-static {}, Lcom/samsung/sprint/chameleon/ChameleonNode$FileNodes;->revertAllBackupFiles()V

    .line 241
    return-void
.end method

.method saveProperties(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, "properties":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 416
    :goto_0
    return-object v2

    .line 408
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 409
    .local v0, "property":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->savePropertyToSession(Landroid/os/Bundle;)I

    move-result v1

    .line 410
    .local v1, "result":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method savePropertyImmediately(Landroid/os/Bundle;)I
    .locals 9
    .param p1, "property"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 325
    invoke-static {p1}, Lcom/samsung/sprint/chameleon/Utilities;->isChameleonProperty(Landroid/os/Bundle;)Z

    move-result v1

    .line 326
    .local v1, "isChameleonProperty":Z
    const-string v7, "name"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 330
    .local v4, "result":I
    invoke-static {v2}, Lcom/samsung/sprint/chameleon/ChameleonNode$FileNodes;->getByName(Ljava/lang/String;)Lcom/samsung/sprint/chameleon/ChameleonNode$FileNodes;

    move-result-object v3

    .line 331
    .local v3, "node":Lcom/samsung/sprint/chameleon/ChameleonNode$FileNodes;
    if-eqz v3, :cond_0

    .line 332
    invoke-virtual {v3}, Lcom/samsung/sprint/chameleon/ChameleonNode$FileNodes;->deleteUnzippedFiles()V

    .line 334
    invoke-direct {p0, p1, v3, v6}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->copyFile(Landroid/os/Bundle;Lcom/samsung/sprint/chameleon/ChameleonNode$FileNodes;Z)I

    move-result v4

    .line 336
    if-nez v4, :cond_0

    .line 337
    invoke-virtual {v3}, Lcom/samsung/sprint/chameleon/ChameleonNode$FileNodes;->unzipIfNeeded()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v4, 0x0

    .line 342
    :cond_0
    :goto_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 343
    .local v5, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/Bundle;>;"
    if-nez v4, :cond_1

    .line 344
    invoke-interface {v5, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    if-eqz v1, :cond_3

    .line 346
    invoke-direct {p0, v5}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->commitToXml(Ljava/util/Map;)I

    move-result v4

    .line 354
    :cond_1
    :goto_1
    if-eqz v4, :cond_4

    .line 355
    const/4 v6, 0x6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error setting immediately "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V

    .line 362
    :goto_2
    return v4

    .end local v5    # "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/Bundle;>;"
    :cond_2
    move v4, v6

    .line 337
    goto :goto_0

    .line 348
    .restart local v5    # "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/Bundle;>;"
    :cond_3
    iget-object v6, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mDatabaseHelper:Lcom/samsung/sprint/chameleon/SprintDatabaseHelper;

    invoke-virtual {v6}, Lcom/samsung/sprint/chameleon/SprintDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 349
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v0, v5}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->commitToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)I

    move-result v4

    .line 350
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 357
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_4
    const/4 v6, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Set property immediately "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V

    .line 359
    iget-object v6, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mAppsEnabler:Lcom/samsung/sprint/chameleon/enabledapps/GenericAppsEnabler;

    iget-object v7, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mXmlValues:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v7}, Lcom/samsung/sprint/chameleon/enabledapps/GenericAppsEnabler;->setAppEnableStatesWithPayload(Ljava/util/Map;Ljava/util/Map;)I

    move-result v4

    goto :goto_2
.end method

.method savePropertyToSession(Landroid/os/Bundle;)I
    .locals 6
    .param p1, "property"    # Landroid/os/Bundle;

    .prologue
    .line 376
    invoke-static {p1}, Lcom/samsung/sprint/chameleon/Utilities;->isChameleonProperty(Landroid/os/Bundle;)Z

    move-result v0

    .line 377
    .local v0, "isChameleonProperty":Z
    const-string v3, "name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/samsung/sprint/chameleon/ChameleonHelper;->copyFileIfNeeded(Landroid/os/Bundle;)I

    move-result v2

    .line 382
    .local v2, "result":I
    if-nez v2, :cond_1

    .line 383
    if-eqz v0, :cond_0

    .line 384
    iget-object v3, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mCachedChameleonProperties:Ljava/util/HashMap;

    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :goto_0
    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Set property "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "name"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V

    .line 393
    :goto_1
    return v2

    .line 386
    :cond_0
    iget-object v3, p0, Lcom/samsung/sprint/chameleon/ChameleonHelper;->mCachedUnknownProperties:Ljava/util/HashMap;

    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 390
    :cond_1
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error setting "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "name"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/sprint/chameleon/Utilities;->log(ILjava/lang/String;)V

    goto :goto_1
.end method
