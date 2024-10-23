.class public Lai/api/util/RecognizerChecker;
.super Ljava/lang/Object;
.source "RecognizerChecker.java"


# static fields
.field public static final GOOGLE_RECOGNIZER_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field public static final GOOGLE_VOICE_SEARCH_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.voicesearch"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findGoogleRecognizer(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-static {}, Lai/api/util/RecognizerChecker;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lai/api/util/RecognizerChecker;->findRecognizerByPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private static findRecognizerByPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefPackage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 48
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_1

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.speech.RecognitionService"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 49
    .local v1, "available":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 51
    .local v2, "numAvailable":I
    if-nez v2, :cond_2

    .line 65
    :cond_0
    :goto_1
    return-object v5

    .line 48
    .end local v1    # "available":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "numAvailable":I
    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    goto :goto_0

    .line 55
    .restart local v1    # "available":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2    # "numAvailable":I
    :cond_2
    if-eqz p1, :cond_0

    .line 56
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 57
    .local v0, "anAvailable":Landroid/content/pm/ResolveInfo;
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 59
    .local v4, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v4, :cond_3

    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 60
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getGoogleRecognizerVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 73
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-static {p0}, Lai/api/util/RecognizerChecker;->findGoogleRecognizer(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    .line 74
    .local v3, "recognizerComponentName":Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    .line 75
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 76
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 82
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "recognizerComponentName":Landroid/content/ComponentName;
    :goto_0
    return-object v4

    .line 80
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "recognizerComponentName":Landroid/content/ComponentName;
    :cond_0
    const-string v4, ""
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "recognizerComponentName":Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, ""

    goto :goto_0
.end method

.method private static getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 93
    const-string v0, "com.google.android.googlequicksearchbox"

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.voicesearch"

    goto :goto_0
.end method

.method public static isGoogleRecognizerAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-static {p0}, Lai/api/util/RecognizerChecker;->findGoogleRecognizer(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
