.class public Lcom/ubtech/alpha2/core/utils/AppCrashHandler;
.super Ljava/lang/Object;
.source "AppCrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static instance:Lcom/ubtech/alpha2/core/utils/AppCrashHandler;


# instance fields
.field private final EXCEPTION:Ljava/lang/String;

.field private final PATTERN:Ljava/lang/String;

.field private final PREFIX:Ljava/lang/String;

.field private final SUFFIX:Ljava/lang/String;

.field private final TRACE:Ljava/lang/String;

.field private final VERSIONCODE:Ljava/lang/String;

.field private final VERSIONNAME:Ljava/lang/String;

.field private crashReport:Ljava/util/Properties;

.field private mContext:Landroid/content/Context;

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-class v0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->tag:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->crashReport:Ljava/util/Properties;

    .line 56
    const-string v0, "trace"

    iput-object v0, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->TRACE:Ljava/lang/String;

    .line 57
    const-string v0, "exception"

    iput-object v0, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->EXCEPTION:Ljava/lang/String;

    .line 58
    const-string v0, "versionName"

    iput-object v0, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->VERSIONNAME:Ljava/lang/String;

    .line 59
    const-string v0, "versionCode"

    iput-object v0, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->VERSIONCODE:Ljava/lang/String;

    .line 61
    const-string v0, "crash_"

    iput-object v0, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->PREFIX:Ljava/lang/String;

    .line 62
    const-string v0, "yyyy-MM-dd hh:mm:ss"

    iput-object v0, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->PATTERN:Ljava/lang/String;

    .line 63
    const-string v0, ".cr"

    iput-object v0, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->SUFFIX:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ubtech/alpha2/core/utils/AppCrashHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ubtech/alpha2/core/utils/AppCrashHandler;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->tag:Ljava/lang/String;

    return-object v0
.end method

.method private conllectCrashDeviceInfo(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 152
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 153
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    .line 154
    iget-object v5, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->crashReport:Ljava/util/Properties;

    const-string v6, "versionName"

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v5, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->crashReport:Ljava/util/Properties;

    const-string v6, "versionCode"

    iget v7, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_0
    const-class v5, Landroid/os/Build;

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 161
    .local v2, "fieldList":[Ljava/lang/reflect/Field;
    if-eqz v2, :cond_1

    .line 162
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v2, v5

    .line 163
    .local v0, "device":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 164
    iget-object v7, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->crashReport:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 162
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "device":Ljava/lang/reflect/Field;
    .end local v2    # "fieldList":[Ljava/lang/reflect/Field;
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 174
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_1
    return-void

    .line 169
    :catch_1
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 171
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getInstance()Lcom/ubtech/alpha2/core/utils/AppCrashHandler;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->instance:Lcom/ubtech/alpha2/core/utils/AppCrashHandler;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;

    invoke-direct {v0}, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;-><init>()V

    sput-object v0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->instance:Lcom/ubtech/alpha2/core/utils/AppCrashHandler;

    .line 74
    :cond_0
    sget-object v0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->instance:Lcom/ubtech/alpha2/core/utils/AppCrashHandler;

    return-object v0
.end method

.method private handlerException(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x1

    .line 110
    if-nez p1, :cond_0

    .line 141
    :goto_0
    return v1

    .line 114
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    const/4 v1, 0x0

    goto :goto_0

    .line 119
    :cond_1
    new-instance v2, Lcom/ubtech/alpha2/core/utils/AppCrashHandler$1;

    invoke-direct {v2, p0}, Lcom/ubtech/alpha2/core/utils/AppCrashHandler$1;-><init>(Lcom/ubtech/alpha2/core/utils/AppCrashHandler;)V

    .line 130
    invoke-virtual {v2}, Lcom/ubtech/alpha2/core/utils/AppCrashHandler$1;->start()V

    .line 133
    iget-object v2, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->conllectCrashDeviceInfo(Landroid/content/Context;)V

    .line 136
    invoke-direct {p0, p1}, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->saveCrashInfo(Ljava/lang/Throwable;)V

    .line 139
    invoke-virtual {p0}, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->sendCrashReport()V

    goto :goto_0
.end method

.method private saveCrashInfo(Ljava/lang/Throwable;)V
    .locals 10
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 182
    :try_start_0
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 183
    .local v6, "writer":Ljava/io/Writer;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 184
    .local v4, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p1, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 186
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 187
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 189
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, "result":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 195
    iget-object v7, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->crashReport:Ljava/util/Properties;

    const-string v8, "exception"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v7, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->crashReport:Ljava/util/Properties;

    const-string v8, "trace"

    invoke-virtual {v7, v8, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-virtual {p0}, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->getCrashFileName()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "fileName":Ljava/lang/String;
    iget-object v7, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 200
    .local v3, "fos":Ljava/io/FileOutputStream;
    iget-object v7, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->crashReport:Ljava/util/Properties;

    iget-object v8, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 202
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "printWriter":Ljava/io/PrintWriter;
    .end local v5    # "result":Ljava/lang/String;
    .end local v6    # "writer":Ljava/io/Writer;
    :goto_1
    return-void

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getCrashFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "crash_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, "fileName":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 217
    .local v0, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 218
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v3, ".cr"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->mContext:Landroid/content/Context;

    .line 83
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 84
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 85
    return-void
.end method

.method public sendCrashReport()V
    .locals 8

    .prologue
    .line 228
    iget-object v5, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 229
    .local v2, "filesDir":Ljava/io/File;
    new-instance v3, Lcom/ubtech/alpha2/core/utils/AppCrashHandler$2;

    invoke-direct {v3, p0}, Lcom/ubtech/alpha2/core/utils/AppCrashHandler$2;-><init>(Lcom/ubtech/alpha2/core/utils/AppCrashHandler;)V

    .line 236
    .local v3, "filter":Ljava/io/FilenameFilter;
    invoke-virtual {v2, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, "list":[Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    .line 238
    array-length v6, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v4, v5

    .line 239
    .local v1, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v0, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 240
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 242
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 238
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 246
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 90
    invoke-direct {p0, p2}, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->handlerException(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/ubtech/alpha2/core/utils/AppCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 102
    :goto_0
    return-void

    .line 95
    :cond_0
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
