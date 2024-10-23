.class Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain$2;
.super Ljava/util/TimerTask;
.source "DaemonDomain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->processInterrupt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;


# direct methods
.method constructor <init>(Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain$2;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain$2;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->access$400(Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;)V

    .line 218
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain$2;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->access$002(Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;I)I

    .line 219
    return-void
.end method
