.class public Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$SavePictureTask;
.super Landroid/os/AsyncTask;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SavePictureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[B",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;


# direct methods
.method public constructor <init>(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$SavePictureTask;->this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 312
    check-cast p1, [[B

    invoke-virtual {p0, p1}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$SavePictureTask;->doInBackground([[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([[B)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [[B
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 316
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$SavePictureTask;->this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    .line 317
    invoke-static {v4}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->access$500(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)Landroid/content/Context;

    move-result-object v4

    .line 316
    invoke-static {v3, v4}, Lcom/ubtechinc/alphaenglishchat/camera/FileUtil;->getOutputMediaFile(ILandroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 318
    .local v2, "pictureFile":Ljava/io/File;
    if-nez v2, :cond_0

    .line 319
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$SavePictureTask;->this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    invoke-static {v3}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->access$500(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)Landroid/content/Context;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 336
    :goto_0
    return-object v6

    .line 323
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 324
    .local v1, "fos":Ljava/io/FileOutputStream;
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$SavePictureTask;->this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->access$602(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 326
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 327
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 328
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$SavePictureTask;->this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    invoke-static {v3}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->access$700(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$SavePictureTask;->this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    invoke-static {v4}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->access$600(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;->back(Ljava/lang/String;)V

    .line 329
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$SavePictureTask;->this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->access$602(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 330
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$SavePictureTask;->this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    invoke-static {v3}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->access$000(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 333
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$SavePictureTask;->this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    invoke-static {v3}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->access$000(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error accessing file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
