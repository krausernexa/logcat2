.class Lcom/ubtechinc/alphaenglishchat/application/CrashHandler$1;
.super Ljava/lang/Thread;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtechinc/alphaenglishchat/application/CrashHandler;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/application/CrashHandler;


# direct methods
.method constructor <init>(Lcom/ubtechinc/alphaenglishchat/application/CrashHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alphaenglishchat/application/CrashHandler;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/application/CrashHandler$1;->this$0:Lcom/ubtechinc/alphaenglishchat/application/CrashHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 94
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 95
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/application/CrashHandler$1;->this$0:Lcom/ubtechinc/alphaenglishchat/application/CrashHandler;

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/application/CrashHandler;->access$000(Lcom/ubtechinc/alphaenglishchat/application/CrashHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 96
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 97
    return-void
.end method
