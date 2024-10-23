.class public Lcom/ubtech/alpha2/BaseApplication;
.super Landroid/app/Application;
.source "BaseApplication.java"


# static fields
.field public static SYS_CACHE_PATH:Ljava/lang/String;

.field private static daoMaster:Lcom/ubtech/alpha2/core/db/DaoMaster;

.field private static daoSession:Lcom/ubtech/alpha2/core/db/DaoSession;

.field public static isDebug:Z


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ubtech/alpha2/BaseApplication;->isDebug:Z

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/ubtech/alpha2/BaseApplication;->SYS_CACHE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 42
    const-class v0, Lcom/ubtech/alpha2/BaseApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtech/alpha2/BaseApplication;->tag:Ljava/lang/String;

    return-void
.end method

.method public static getDaoSession(Landroid/content/Context;)Lcom/ubtech/alpha2/core/db/DaoSession;
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 130
    sget-object v1, Lcom/ubtech/alpha2/BaseApplication;->daoSession:Lcom/ubtech/alpha2/core/db/DaoSession;

    if-nez v1, :cond_1

    .line 131
    sget-object v1, Lcom/ubtech/alpha2/BaseApplication;->daoMaster:Lcom/ubtech/alpha2/core/db/DaoMaster;

    if-nez v1, :cond_0

    .line 132
    new-instance v0, Lcom/ubtech/alpha2/core/db/DaoMaster$DevOpenHelper;

    const-string v1, "ubtech_alpha2_db"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/ubtech/alpha2/core/db/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 133
    .local v0, "helper":Lcom/ubtech/alpha2/core/db/DaoMaster$OpenHelper;
    new-instance v1, Lcom/ubtech/alpha2/core/db/DaoMaster;

    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/db/DaoMaster$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ubtech/alpha2/core/db/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v1, Lcom/ubtech/alpha2/BaseApplication;->daoMaster:Lcom/ubtech/alpha2/core/db/DaoMaster;

    .line 135
    .end local v0    # "helper":Lcom/ubtech/alpha2/core/db/DaoMaster$OpenHelper;
    :cond_0
    sget-object v1, Lcom/ubtech/alpha2/BaseApplication;->daoMaster:Lcom/ubtech/alpha2/core/db/DaoMaster;

    invoke-virtual {v1}, Lcom/ubtech/alpha2/core/db/DaoMaster;->newSession()Lcom/ubtech/alpha2/core/db/DaoSession;

    move-result-object v1

    sput-object v1, Lcom/ubtech/alpha2/BaseApplication;->daoSession:Lcom/ubtech/alpha2/core/db/DaoSession;

    .line 137
    :cond_1
    sget-object v1, Lcom/ubtech/alpha2/BaseApplication;->daoSession:Lcom/ubtech/alpha2/core/db/DaoSession;

    return-object v1
.end method

.method private initConfig()V
    .locals 9

    .prologue
    .line 92
    :try_start_0
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 93
    .local v3, "props":Ljava/util/Properties;
    invoke-virtual {p0}, Lcom/ubtech/alpha2/BaseApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "config.properties"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 94
    .local v2, "input":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 97
    const-string v4, "debug"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "flag":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 99
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/ubtech/alpha2/BaseApplication;->isDebug:Z

    .line 100
    iget-object v4, p0, Lcom/ubtech/alpha2/BaseApplication;->tag:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isDebug: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/ubtech/alpha2/BaseApplication;->isDebug:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/ubtech/alpha2/core/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    sget-boolean v4, Lcom/ubtech/alpha2/BaseApplication;->isDebug:Z

    invoke-static {v4}, Lcom/ubtech/alpha2/core/utils/NLog;->setDebug(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1    # "flag":Ljava/lang/String;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v3    # "props":Ljava/util/Properties;
    :cond_0
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private initCrashHandler()V
    .locals 2

    .prologue
    .line 80
    sget-boolean v1, Lcom/ubtech/alpha2/BaseApplication;->isDebug:Z

    if-nez v1, :cond_0

    .line 81
    invoke-static {}, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->getInstance()Lcom/ubtech/alpha2/core/utils/AppCrashHandler;

    move-result-object v0

    .line 82
    .local v0, "crashHandler":Lcom/ubtech/alpha2/core/utils/AppCrashHandler;
    invoke-virtual {p0}, Lcom/ubtech/alpha2/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->init(Landroid/content/Context;)V

    .line 84
    .end local v0    # "crashHandler":Lcom/ubtech/alpha2/core/utils/AppCrashHandler;
    :cond_0
    return-void
.end method

.method private initImageLoader(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 114
    new-instance v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    .line 115
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;-><init>()V

    .line 117
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 118
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    .line 122
    .local v0, "config":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 123
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/ubtech/alpha2/BaseApplication;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ubtech/alpha2/BaseApplication;->SYS_CACHE_PATH:Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lcom/ubtech/alpha2/BaseApplication;->initConfig()V

    .line 70
    invoke-direct {p0}, Lcom/ubtech/alpha2/BaseApplication;->initCrashHandler()V

    .line 73
    invoke-virtual {p0}, Lcom/ubtech/alpha2/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ubtech/alpha2/BaseApplication;->initImageLoader(Landroid/content/Context;)V

    .line 74
    return-void
.end method
