.class Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$1$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$1;->onResult(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$1;


# direct methods
.method constructor <init>(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$1;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$1$1;->this$1:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$1$1;->this$1:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$1;

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$1;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$000(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V

    .line 257
    return-void
.end method
