.class Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$8;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->uploadUnknownQuestion(Ljava/lang/String;)V
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
    .line 1328
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$8;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 1331
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1332
    const-string v0, "ChatActivity"

    const-string v1, "upload unknown question success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    :goto_0
    return-void

    .line 1334
    :cond_0
    const-string v0, "ChatActivity"

    const-string v1, "upload unknown question fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
