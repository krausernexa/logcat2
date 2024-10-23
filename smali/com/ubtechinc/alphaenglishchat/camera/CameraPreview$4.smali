.class Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$4;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;


# direct methods
.method constructor <init>(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$4;->this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "arg0"    # [B
    .param p2, "arg1"    # Landroid/hardware/Camera;

    .prologue
    .line 296
    return-void
.end method
