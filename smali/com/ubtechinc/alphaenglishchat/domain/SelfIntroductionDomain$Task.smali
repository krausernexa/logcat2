.class public Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain$Task;
.super Ljava/util/TimerTask;
.source "SelfIntroductionDomain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Task"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;


# direct methods
.method public constructor <init>(Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain$Task;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 89
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain$Task;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;

    invoke-static {v1}, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->access$000(Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain$Task;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain$Task;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;

    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->access$100(Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->access$102(Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;I)I

    .line 91
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain$Task;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;

    invoke-static {v1}, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->access$200(Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u65f6\u95f4\u5230\uff0c\u64ad\u653e\u5b9a\u65f6\u4efb\u52a1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain$Task;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;

    invoke-static {v3}, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->access$100(Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain$Task;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;

    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->access$300(Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 94
    .local v0, "index":I
    invoke-static {}, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->access$400()Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain$Task;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;

    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->access$300(Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    .line 95
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain$Task;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;

    invoke-static {v1}, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->access$100(Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain$Task;->cancel()Z

    .line 99
    .end local v0    # "index":I
    :cond_0
    return-void
.end method
