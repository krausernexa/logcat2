.class Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity$2;->this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity$2;->this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;->access$000(Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;)Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->takePicture()V

    .line 37
    return-void
.end method
