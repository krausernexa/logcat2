.class public Lai/api/util/VersionConfig;
.super Ljava/lang/Object;
.source "VersionConfig.java"


# static fields
.field private static final DOT_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String;

.field private static final configuration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lai/api/util/VersionConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private destroyRecognizer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    const-class v0, Lai/api/util/VersionConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lai/api/util/VersionConfig;->TAG:Ljava/lang/String;

    .line 37
    const-string v0, "."

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lai/api/util/VersionConfig;->DOT_PATTERN:Ljava/util/regex/Pattern;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lai/api/util/VersionConfig;->configuration:Ljava/util/Map;

    .line 42
    sget-object v0, Lai/api/util/VersionConfig;->configuration:Ljava/util/Map;

    const-string v1, "5.9.26"

    new-instance v2, Lai/api/util/VersionConfig;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lai/api/util/VersionConfig;-><init>(Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lai/api/util/VersionConfig;->configuration:Ljava/util/Map;

    const-string v1, "4.7.13"

    new-instance v2, Lai/api/util/VersionConfig;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lai/api/util/VersionConfig;-><init>(Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lai/api/util/VersionConfig;->destroyRecognizer:Z

    .line 49
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "destroyRecognizer"    # Z

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lai/api/util/VersionConfig;->destroyRecognizer:Z

    .line 52
    iput-boolean p1, p0, Lai/api/util/VersionConfig;->destroyRecognizer:Z

    .line 53
    return-void
.end method

.method private static getConfigByVersion(Landroid/content/Context;)Lai/api/util/VersionConfig;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-static {p0}, Lai/api/util/RecognizerChecker;->getGoogleRecognizerVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lai/api/util/VersionConfig;->numberFromBuildVersion(Ljava/lang/String;)J

    move-result-wide v2

    .line 64
    .local v2, "number":J
    new-instance v0, Lai/api/util/VersionConfig;

    invoke-direct {v0}, Lai/api/util/VersionConfig;-><init>()V

    .line 65
    .local v0, "config":Lai/api/util/VersionConfig;
    const-wide/16 v4, 0x0

    .line 67
    .local v4, "prevVersionNumber":J
    sget-object v7, Lai/api/util/VersionConfig;->configuration:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 68
    .local v1, "configEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lai/api/util/VersionConfig;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 70
    .local v6, "versionName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 71
    invoke-static {v6}, Lai/api/util/VersionConfig;->numberFromBuildVersion(Ljava/lang/String;)J

    move-result-wide v8

    .line 72
    .local v8, "versionNumber":J
    cmp-long v7, v2, v8

    if-ltz v7, :cond_0

    cmp-long v7, v4, v8

    if-gez v7, :cond_0

    .line 73
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lai/api/util/VersionConfig;

    iget-boolean v7, v7, Lai/api/util/VersionConfig;->destroyRecognizer:Z

    iput-boolean v7, v0, Lai/api/util/VersionConfig;->destroyRecognizer:Z

    .line 74
    move-wide v4, v8

    goto :goto_0

    .line 79
    .end local v1    # "configEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lai/api/util/VersionConfig;>;"
    .end local v6    # "versionName":Ljava/lang/String;
    .end local v8    # "versionNumber":J
    :cond_1
    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lai/api/util/VersionConfig;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 57
    invoke-static {p0}, Lai/api/util/VersionConfig;->getConfigByVersion(Landroid/content/Context;)Lai/api/util/VersionConfig;

    move-result-object v0

    .line 58
    .local v0, "config":Lai/api/util/VersionConfig;
    return-object v0
.end method

.method private static numberFromBuildVersion(Ljava/lang/String;)J
    .locals 8
    .param p0, "buildVersion"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 87
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 99
    :goto_0
    return-wide v4

    .line 90
    :cond_0
    sget-object v6, Lai/api/util/VersionConfig;->DOT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "parts":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v6, 0x3

    array-length v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 94
    aget-object v6, v3, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 97
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_0

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, "ignored":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public isDestroyRecognizer()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lai/api/util/VersionConfig;->destroyRecognizer:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lai/api/GsonFactory;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
