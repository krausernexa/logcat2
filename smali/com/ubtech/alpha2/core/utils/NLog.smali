.class public Lcom/ubtech/alpha2/core/utils/NLog;
.super Ljava/lang/Object;
.source "NLog.java"


# static fields
.field private static final LOG_FORMAT:Ljava/lang/String; = "%1$s\n%2$s"

.field public static isDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ubtech/alpha2/core/utils/NLog;->isDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 18
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/ubtech/alpha2/core/utils/NLog;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 34
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/ubtech/alpha2/core/utils/NLog;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 30
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1, v2}, Lcom/ubtech/alpha2/core/utils/NLog;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "ex"    # Ljava/lang/Throwable;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 38
    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/ubtech/alpha2/core/utils/NLog;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 22
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/ubtech/alpha2/core/utils/NLog;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/ubtech/alpha2/core/utils/NLog;->isDebug:Z

    return v0
.end method

.method private static varargs log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8
    .param p0, "priority"    # I
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 43
    sget-boolean v5, Lcom/ubtech/alpha2/core/utils/NLog;->isDebug:Z

    if-nez v5, :cond_0

    .line 58
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string v0, ""

    .line 46
    .local v0, "log":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 47
    if-eqz p3, :cond_2

    array-length v5, p3

    if-lez v5, :cond_2

    .line 48
    array-length v5, p3

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, p3, v4

    .line 49
    .local v3, "obj":Ljava/lang/Object;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 53
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "logMessage":Ljava/lang/String;
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "logBody":Ljava/lang/String;
    const-string v5, "%1$s\n%2$s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v4

    const/4 v4, 0x1

    aput-object v1, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .end local v1    # "logBody":Ljava/lang/String;
    .end local v2    # "logMessage":Ljava/lang/String;
    :cond_2
    invoke-static {p0, p2, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setDebug(Z)V
    .locals 0
    .param p0, "isDebug"    # Z

    .prologue
    .line 65
    sput-boolean p0, Lcom/ubtech/alpha2/core/utils/NLog;->isDebug:Z

    .line 66
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 26
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/ubtech/alpha2/core/utils/NLog;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    return-void
.end method
