.class Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;


# direct methods
.method constructor <init>(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$1;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 252
    const-string v0, "zdy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " info= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$1;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$100(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$1$1;

    invoke-direct {v1, p0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$1$1;-><init>(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$1;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    return-void
.end method
