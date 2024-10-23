.class public Lcom/ubtechinc/alphaenglishchat/camera/CameraCheck;
.super Ljava/lang/Object;
.source "CameraCheck.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckCamera(Landroid/content/Context;)Z
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.front"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 18
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCameraInstance(Landroid/content/Context;)Landroid/hardware/Camera;
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "c":Landroid/hardware/Camera;
    invoke-static {p0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraCheck;->CheckCamera(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 35
    :cond_0
    :goto_0
    return-object v0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method
