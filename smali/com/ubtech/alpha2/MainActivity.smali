.class public Lcom/ubtech/alpha2/MainActivity;
.super Lcom/ubtech/alpha2/BaseActivity;
.source "MainActivity.java"


# instance fields
.field private final TEST_CODE_1:I

.field private orderItemDao:Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/ubtech/alpha2/BaseActivity;-><init>()V

    .line 27
    const-class v0, Lcom/ubtech/alpha2/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtech/alpha2/MainActivity;->tag:Ljava/lang/String;

    .line 28
    const/16 v0, 0x64

    iput v0, p0, Lcom/ubtech/alpha2/MainActivity;->TEST_CODE_1:I

    return-void
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 3
    .param p1, "requsetCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lcom/ubtech/alpha2/core/action/DemoAction;

    iget-object v2, p0, Lcom/ubtech/alpha2/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/ubtech/alpha2/core/action/DemoAction;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, "action":Lcom/ubtech/alpha2/core/action/DemoAction;
    :try_start_0
    const-string v2, "assets://order.xml"

    invoke-virtual {v0, v2}, Lcom/ubtech/alpha2/core/action/DemoAction;->getOrderXmlDemo(Ljava/lang/String;)Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;
    :try_end_0
    .catch Lcom/ubtech/alpha2/core/network/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 102
    :goto_0
    return-object v2

    .line 98
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Lcom/ubtech/alpha2/core/network/http/HttpException;
    invoke-virtual {v1}, Lcom/ubtech/alpha2/core/network/http/HttpException;->printStackTrace()V

    .line 102
    invoke-super {p0, p1}, Lcom/ubtech/alpha2/BaseActivity;->doInBackground(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/ubtech/alpha2/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget v0, Lcom/ubtech/alpha2/R$layout;->activity_main:I

    invoke-virtual {p0, v0}, Lcom/ubtech/alpha2/MainActivity;->setContentView(I)V

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ubtech/alpha2/core/utils/NLog;->setDebug(Z)V

    .line 40
    return-void
.end method

.method public onProgress(I)V
    .locals 5
    .param p1, "progress"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/ubtech/alpha2/MainActivity;->tag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProgress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/ubtech/alpha2/core/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public onSlience()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ubtech/alpha2/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/ubtech/alpha2/MainActivity$1;-><init>(Lcom/ubtech/alpha2/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 66
    .local v0, "installThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 67
    return-void
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 126
    iget-object v2, p0, Lcom/ubtech/alpha2/MainActivity;->tag:Ljava/lang/String;

    const-string v3, "***onSuccess******"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 128
    check-cast v0, Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;

    .line 129
    .local v0, "bean":Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;
    const-string v3, "zdy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**********"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;->getItem()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ubtech/alpha2/core/model/response/OrderItem;

    invoke-virtual {v2}, Lcom/ubtech/alpha2/core/model/response/OrderItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v2, p0, Lcom/ubtech/alpha2/MainActivity;->orderItemDao:Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;

    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;->getItem()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;->saveOrderItemList(Ljava/util/List;)V

    .line 131
    iget-object v2, p0, Lcom/ubtech/alpha2/MainActivity;->orderItemDao:Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;

    const-string v3, "\u01f0\ufffd\ufffd"

    invoke-virtual {v2, v3}, Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;->queryByName(Ljava/lang/String;)Lcom/ubtech/alpha2/core/model/response/OrderItem;

    move-result-object v1

    .line 132
    .local v1, "orderItem":Lcom/ubtech/alpha2/core/model/response/OrderItem;
    const-string v2, "zdy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**********"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ubtech/alpha2/core/model/response/OrderItem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v0    # "bean":Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;
    .end local v1    # "orderItem":Lcom/ubtech/alpha2/core/model/response/OrderItem;
    :cond_0
    return-void
.end method

.method public onTest(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/ubtech/alpha2/MainActivity;->onSlience()V

    .line 45
    return-void
.end method

.method public onUnInitall()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ubtech/alpha2/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/ubtech/alpha2/MainActivity$2;-><init>(Lcom/ubtech/alpha2/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 82
    .local v0, "unInstallThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method

.method public onUpdate()V
    .locals 4

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "zdy"

    const-string v3, "onUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ubtech/alpha2/FilePath;->appPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/zdyDebug.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Lcom/ubtech/alpha2/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method
