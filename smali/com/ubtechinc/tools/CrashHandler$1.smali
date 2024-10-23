.class Lcom/ubtechinc/tools/CrashHandler$1;
.super Ljava/lang/Thread;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtechinc/tools/CrashHandler;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/tools/CrashHandler;


# direct methods
.method constructor <init>(Lcom/ubtechinc/tools/CrashHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/tools/CrashHandler;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/ubtechinc/tools/CrashHandler$1;->this$0:Lcom/ubtechinc/tools/CrashHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 95
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 96
    iget-object v0, p0, Lcom/ubtechinc/tools/CrashHandler$1;->this$0:Lcom/ubtechinc/tools/CrashHandler;

    invoke-static {v0}, Lcom/ubtechinc/tools/CrashHandler;->access$000(Lcom/ubtechinc/tools/CrashHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5f88\u62b1\u6b49,\u7a0b\u5e8f\u51fa\u73b0\u5f02\u5e38,\u5373\u5c06\u9000\u51fa"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 98
    return-void
.end method
