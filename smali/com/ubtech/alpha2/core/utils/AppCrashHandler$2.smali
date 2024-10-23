.class Lcom/ubtech/alpha2/core/utils/AppCrashHandler$2;
.super Ljava/lang/Object;
.source "AppCrashHandler.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->sendCrashReport()V
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
    .line 229
    iput-object p1, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler$2;->this$0:Lcom/ubtech/alpha2/core/utils/AppCrashHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 232
    const-string v0, ".cr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
