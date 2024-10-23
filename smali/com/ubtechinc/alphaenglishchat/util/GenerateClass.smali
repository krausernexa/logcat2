.class public Lcom/ubtechinc/alphaenglishchat/util/GenerateClass;
.super Ljava/lang/Object;
.source "GenerateClass.java"


# static fields
.field private static final METHOD_GET_LITERAL:Ljava/lang/String; = "getLiteral"

.field private static final METHOD_GET_RANGES:Ljava/lang/String; = "getRanges"

.field private static final METHOD_GET_VALUE:Ljava/lang/String; = "getValue"

.field private static final METHOD_SET_LITERAL:Ljava/lang/String; = "setLiteral"

.field private static final METHOD_SET_RANGES:Ljava/lang/String; = "setRanges"

.field private static final METHOD_SET_VALUE:Ljava/lang/String; = "setValue"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/util/GenerateClass;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private static generateGetMethod(Lcom/google/dexmaker/DexMaker;Lcom/google/dexmaker/TypeId;Ljava/lang/String;)V
    .locals 5
    .param p0, "dexMaker"    # Lcom/google/dexmaker/DexMaker;
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/DexMaker;",
            "Lcom/google/dexmaker/TypeId",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "declaringType":Lcom/google/dexmaker/TypeId;, "Lcom/google/dexmaker/TypeId<*>;"
    sget-object v3, Lcom/google/dexmaker/TypeId;->STRING:Lcom/google/dexmaker/TypeId;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/google/dexmaker/TypeId;

    invoke-virtual {p1, v3, p2, v4}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v1

    .line 79
    .local v1, "methodId":Lcom/google/dexmaker/MethodId;
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/google/dexmaker/DexMaker;->declare(Lcom/google/dexmaker/MethodId;I)Lcom/google/dexmaker/Code;

    move-result-object v0

    .line 82
    .local v0, "code":Lcom/google/dexmaker/Code;
    sget-object v3, Lcom/google/dexmaker/TypeId;->STRING:Lcom/google/dexmaker/TypeId;

    invoke-virtual {v0, v3}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v2

    .line 85
    .local v2, "parameterLocal":Lcom/google/dexmaker/Local;, "Lcom/google/dexmaker/Local<Ljava/lang/String;>;"
    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/google/dexmaker/Code;->loadConstant(Lcom/google/dexmaker/Local;Ljava/lang/Object;)V

    .line 88
    const-string v3, "getLiteral"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    sget-object v3, Lcom/google/dexmaker/TypeId;->STRING:Lcom/google/dexmaker/TypeId;

    const-string v4, "literal"

    invoke-virtual {p1, v3, v4}, Lcom/google/dexmaker/TypeId;->getField(Lcom/google/dexmaker/TypeId;Ljava/lang/String;)Lcom/google/dexmaker/FieldId;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/dexmaker/Code;->sget(Lcom/google/dexmaker/FieldId;Lcom/google/dexmaker/Local;)V

    .line 95
    :cond_0
    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/dexmaker/Code;->returnValue(Lcom/google/dexmaker/Local;)V

    .line 96
    return-void

    .line 90
    :cond_1
    const-string v3, "getValue"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    sget-object v3, Lcom/google/dexmaker/TypeId;->STRING:Lcom/google/dexmaker/TypeId;

    const-string v4, "value"

    invoke-virtual {p1, v3, v4}, Lcom/google/dexmaker/TypeId;->getField(Lcom/google/dexmaker/TypeId;Ljava/lang/String;)Lcom/google/dexmaker/FieldId;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/dexmaker/Code;->sget(Lcom/google/dexmaker/FieldId;Lcom/google/dexmaker/Local;)V

    goto :goto_0

    .line 92
    :cond_2
    const-string v3, "getRanges"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    sget-object v3, Lcom/google/dexmaker/TypeId;->STRING:Lcom/google/dexmaker/TypeId;

    const-string v4, "ranges"

    invoke-virtual {p1, v3, v4}, Lcom/google/dexmaker/TypeId;->getField(Lcom/google/dexmaker/TypeId;Ljava/lang/String;)Lcom/google/dexmaker/FieldId;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/dexmaker/Code;->sget(Lcom/google/dexmaker/FieldId;Lcom/google/dexmaker/Local;)V

    goto :goto_0
.end method

.method private static generateParameter(Lcom/google/dexmaker/DexMaker;Lcom/google/dexmaker/TypeId;)V
    .locals 6
    .param p0, "dexMaker"    # Lcom/google/dexmaker/DexMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/DexMaker;",
            "Lcom/google/dexmaker/TypeId",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "declaringType":Lcom/google/dexmaker/TypeId;, "Lcom/google/dexmaker/TypeId<*>;"
    const/4 v5, 0x2

    .line 64
    sget-object v3, Lcom/google/dexmaker/TypeId;->STRING:Lcom/google/dexmaker/TypeId;

    const-string v4, "literal"

    invoke-virtual {p1, v3, v4}, Lcom/google/dexmaker/TypeId;->getField(Lcom/google/dexmaker/TypeId;Ljava/lang/String;)Lcom/google/dexmaker/FieldId;

    move-result-object v0

    .line 65
    .local v0, "literal":Lcom/google/dexmaker/FieldId;, "Lcom/google/dexmaker/FieldId<*Ljava/lang/String;>;"
    const-string v3, ""

    invoke-virtual {p0, v0, v5, v3}, Lcom/google/dexmaker/DexMaker;->declare(Lcom/google/dexmaker/FieldId;ILjava/lang/Object;)V

    .line 66
    sget-object v3, Lcom/google/dexmaker/TypeId;->STRING:Lcom/google/dexmaker/TypeId;

    const-string v4, "literal"

    invoke-virtual {p1, v3, v4}, Lcom/google/dexmaker/TypeId;->getField(Lcom/google/dexmaker/TypeId;Ljava/lang/String;)Lcom/google/dexmaker/FieldId;

    move-result-object v2

    .line 67
    .local v2, "value":Lcom/google/dexmaker/FieldId;, "Lcom/google/dexmaker/FieldId<*Ljava/lang/String;>;"
    const-string v3, ""

    invoke-virtual {p0, v2, v5, v3}, Lcom/google/dexmaker/DexMaker;->declare(Lcom/google/dexmaker/FieldId;ILjava/lang/Object;)V

    .line 68
    sget-object v3, Lcom/google/dexmaker/TypeId;->STRING:Lcom/google/dexmaker/TypeId;

    const-string v4, "literal"

    invoke-virtual {p1, v3, v4}, Lcom/google/dexmaker/TypeId;->getField(Lcom/google/dexmaker/TypeId;Ljava/lang/String;)Lcom/google/dexmaker/FieldId;

    move-result-object v1

    .line 69
    .local v1, "ranges":Lcom/google/dexmaker/FieldId;, "Lcom/google/dexmaker/FieldId<*Ljava/lang/String;>;"
    const-string v3, ""

    invoke-virtual {p0, v1, v5, v3}, Lcom/google/dexmaker/DexMaker;->declare(Lcom/google/dexmaker/FieldId;ILjava/lang/Object;)V

    .line 70
    return-void
.end method

.method private static generateSetMethod(Lcom/google/dexmaker/DexMaker;Lcom/google/dexmaker/TypeId;Ljava/lang/String;)V
    .locals 9
    .param p0, "dexMaker"    # Lcom/google/dexmaker/DexMaker;
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/DexMaker;",
            "Lcom/google/dexmaker/TypeId",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "declaringType":Lcom/google/dexmaker/TypeId;, "Lcom/google/dexmaker/TypeId<*>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 100
    sget-object v4, Lcom/google/dexmaker/TypeId;->VOID:Lcom/google/dexmaker/TypeId;

    new-array v5, v8, [Lcom/google/dexmaker/TypeId;

    sget-object v6, Lcom/google/dexmaker/TypeId;->STRING:Lcom/google/dexmaker/TypeId;

    aput-object v6, v5, v7

    invoke-virtual {p1, v4, p2, v5}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v1

    .line 104
    .local v1, "methodId":Lcom/google/dexmaker/MethodId;
    invoke-virtual {p0, v1, v8}, Lcom/google/dexmaker/DexMaker;->declare(Lcom/google/dexmaker/MethodId;I)Lcom/google/dexmaker/Code;

    move-result-object v0

    .line 107
    .local v0, "code":Lcom/google/dexmaker/Code;
    sget-object v4, Lcom/google/dexmaker/TypeId;->STRING:Lcom/google/dexmaker/TypeId;

    invoke-virtual {v0, v4}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v2

    .line 110
    .local v2, "parameterLocal":Lcom/google/dexmaker/Local;, "Lcom/google/dexmaker/Local<Ljava/lang/String;>;"
    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Lcom/google/dexmaker/Code;->loadConstant(Lcom/google/dexmaker/Local;Ljava/lang/Object;)V

    .line 111
    const-class v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v3

    .line 112
    .local v3, "stringType":Lcom/google/dexmaker/TypeId;, "Lcom/google/dexmaker/TypeId<Ljava/lang/String;>;"
    invoke-virtual {v0, v7, v3}, Lcom/google/dexmaker/Code;->getParameter(ILcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v2

    .line 115
    const-string v4, "getLiteral"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    sget-object v4, Lcom/google/dexmaker/TypeId;->STRING:Lcom/google/dexmaker/TypeId;

    const-string v5, "literal"

    invoke-virtual {p1, v4, v5}, Lcom/google/dexmaker/TypeId;->getField(Lcom/google/dexmaker/TypeId;Ljava/lang/String;)Lcom/google/dexmaker/FieldId;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/google/dexmaker/Code;->sput(Lcom/google/dexmaker/FieldId;Lcom/google/dexmaker/Local;)V

    .line 122
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/google/dexmaker/Code;->returnVoid()V

    .line 123
    return-void

    .line 117
    :cond_1
    const-string v4, "getValue"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 118
    sget-object v4, Lcom/google/dexmaker/TypeId;->STRING:Lcom/google/dexmaker/TypeId;

    const-string v5, "value"

    invoke-virtual {p1, v4, v5}, Lcom/google/dexmaker/TypeId;->getField(Lcom/google/dexmaker/TypeId;Ljava/lang/String;)Lcom/google/dexmaker/FieldId;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/google/dexmaker/Code;->sput(Lcom/google/dexmaker/FieldId;Lcom/google/dexmaker/Local;)V

    goto :goto_0

    .line 119
    :cond_2
    const-string v4, "getRanges"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    sget-object v4, Lcom/google/dexmaker/TypeId;->STRING:Lcom/google/dexmaker/TypeId;

    const-string v5, "ranges"

    invoke-virtual {p1, v4, v5}, Lcom/google/dexmaker/TypeId;->getField(Lcom/google/dexmaker/TypeId;Ljava/lang/String;)Lcom/google/dexmaker/FieldId;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/google/dexmaker/Code;->sput(Lcom/google/dexmaker/FieldId;Lcom/google/dexmaker/Local;)V

    goto :goto_0
.end method


# virtual methods
.method public generateClass(Ljava/lang/String;)V
    .locals 8
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 36
    :try_start_0
    new-instance v0, Lcom/google/dexmaker/DexMaker;

    invoke-direct {v0}, Lcom/google/dexmaker/DexMaker;-><init>()V

    .line 38
    .local v0, "dexMaker":Lcom/google/dexmaker/DexMaker;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/String;)Lcom/google/dexmaker/TypeId;

    move-result-object v1

    .line 39
    .local v1, "classNameType":Lcom/google/dexmaker/TypeId;, "Lcom/google/dexmaker/TypeId<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".generated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/google/dexmaker/TypeId;->OBJECT:Lcom/google/dexmaker/TypeId;

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/google/dexmaker/TypeId;

    invoke-virtual/range {v0 .. v5}, Lcom/google/dexmaker/DexMaker;->declare(Lcom/google/dexmaker/TypeId;Ljava/lang/String;ILcom/google/dexmaker/TypeId;[Lcom/google/dexmaker/TypeId;)V

    .line 41
    const-string v2, "getLiteral"

    invoke-static {v0, v1, v2}, Lcom/ubtechinc/alphaenglishchat/util/GenerateClass;->generateGetMethod(Lcom/google/dexmaker/DexMaker;Lcom/google/dexmaker/TypeId;Ljava/lang/String;)V

    .line 42
    const-string v2, "getValue"

    invoke-static {v0, v1, v2}, Lcom/ubtechinc/alphaenglishchat/util/GenerateClass;->generateGetMethod(Lcom/google/dexmaker/DexMaker;Lcom/google/dexmaker/TypeId;Ljava/lang/String;)V

    .line 43
    const-string v2, "getRanges"

    invoke-static {v0, v1, v2}, Lcom/ubtechinc/alphaenglishchat/util/GenerateClass;->generateGetMethod(Lcom/google/dexmaker/DexMaker;Lcom/google/dexmaker/TypeId;Ljava/lang/String;)V

    .line 45
    const-string v2, "setLiteral"

    invoke-static {v0, v1, v2}, Lcom/ubtechinc/alphaenglishchat/util/GenerateClass;->generateSetMethod(Lcom/google/dexmaker/DexMaker;Lcom/google/dexmaker/TypeId;Ljava/lang/String;)V

    .line 46
    const-string v2, "setValue"

    invoke-static {v0, v1, v2}, Lcom/ubtechinc/alphaenglishchat/util/GenerateClass;->generateSetMethod(Lcom/google/dexmaker/DexMaker;Lcom/google/dexmaker/TypeId;Ljava/lang/String;)V

    .line 47
    const-string v2, "setRanges"

    invoke-static {v0, v1, v2}, Lcom/ubtechinc/alphaenglishchat/util/GenerateClass;->generateSetMethod(Lcom/google/dexmaker/DexMaker;Lcom/google/dexmaker/TypeId;Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/util/GenerateClass;->mContext:Landroid/content/Context;

    const-string v3, "dex"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    .line 51
    .local v7, "outputDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/util/GenerateClass;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Lcom/google/dexmaker/DexMaker;->generateAndLoad(Ljava/lang/ClassLoader;Ljava/io/File;)Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v0    # "dexMaker":Lcom/google/dexmaker/DexMaker;
    .end local v1    # "classNameType":Lcom/google/dexmaker/TypeId;, "Lcom/google/dexmaker/TypeId<*>;"
    .end local v7    # "outputDir":Ljava/io/File;
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v6

    .line 59
    .local v6, "e":Ljava/lang/Exception;
    const-string v2, "MainActivity"

    const-string v3, "[onMakeDex]"

    invoke-static {v2, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
