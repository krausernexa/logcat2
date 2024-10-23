.class Lcom/ubtech/alpha2/core/utils/AppCrashHandler$1;
.super Ljava/lang/Thread;
.source "AppCrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->handlerException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtech/alpha2/core/utils/AppCrashHandler;


# direct methods
.method constructor <init>(Lcom/ubtech/alpha2/core/utils/AppCrashHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtech/alpha2/core/utils/AppCrashHandler;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler$1;->this$0:Lcom/ubtech/alpha2/core/utils/AppCrashHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 123
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 126
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler$1;->this$0:Lcom/ubtech/alpha2/core/utils/AppCrashHandler;

    invoke-static {v0}, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->access$000(Lcom/ubtech/alpha2/core/utils/AppCrashHandler;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "test exit!"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/ubtech/alpha2/core/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 128
    return-void
.end method
