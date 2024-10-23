.class public abstract Lcom/ubtech/alpha2/core/base/BaseManager;
.super Ljava/lang/Object;
.source "BaseManager.java"


# static fields
.field protected static final BOTH:I = 0x3

.field protected static final JOSN:I = 0x1

.field protected static final XML:I = 0x2


# instance fields
.field protected httpManager:Lcom/ubtech/alpha2/core/network/http/HttpClientManager;

.field protected jsonMapper:Lorg/codehaus/jackson/map/ObjectMapper;

.field protected mContext:Landroid/content/Context;

.field protected xmlMapper:Lcom/thoughtworks/xstream/XStream;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/ubtech/alpha2/core/base/BaseManager;-><init>(Landroid/content/Context;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parseType"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/ubtech/alpha2/core/base/BaseManager;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {p1}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->getInstance(Landroid/content/Context;)Lcom/ubtech/alpha2/core/network/http/HttpClientManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtech/alpha2/core/base/BaseManager;->httpManager:Lcom/ubtech/alpha2/core/network/http/HttpClientManager;

    .line 49
    packed-switch p2, :pswitch_data_0

    .line 59
    invoke-virtual {p0}, Lcom/ubtech/alpha2/core/base/BaseManager;->getJSONMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtech/alpha2/core/base/BaseManager;->jsonMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 60
    invoke-virtual {p0}, Lcom/ubtech/alpha2/core/base/BaseManager;->getXMLMapper()Lcom/thoughtworks/xstream/XStream;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtech/alpha2/core/base/BaseManager;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    .line 63
    :goto_0
    return-void

    .line 51
    :pswitch_0
    invoke-virtual {p0}, Lcom/ubtech/alpha2/core/base/BaseManager;->getJSONMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtech/alpha2/core/base/BaseManager;->jsonMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    goto :goto_0

    .line 55
    :pswitch_1
    invoke-virtual {p0}, Lcom/ubtech/alpha2/core/base/BaseManager;->getXMLMapper()Lcom/thoughtworks/xstream/XStream;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtech/alpha2/core/base/BaseManager;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public beanToJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 174
    new-instance v2, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v2}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    .line 176
    .local v2, "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    sget-object v3, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->INDENT_OUTPUT:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 177
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 176
    invoke-virtual {v2, v3, v4}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;

    .line 178
    const/4 v1, 0x0

    .line 180
    .local v1, "json":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonGenerationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 191
    :goto_0
    return-object v1

    .line 181
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Lorg/codehaus/jackson/JsonGenerationException;
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerationException;->printStackTrace()V

    goto :goto_0

    .line 184
    .end local v0    # "e":Lorg/codehaus/jackson/JsonGenerationException;
    :catch_1
    move-exception v0

    .line 186
    .local v0, "e":Lorg/codehaus/jackson/map/JsonMappingException;
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/JsonMappingException;->printStackTrace()V

    goto :goto_0

    .line 187
    .end local v0    # "e":Lorg/codehaus/jackson/map/JsonMappingException;
    :catch_2
    move-exception v0

    .line 189
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getJSONMapper()Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ubtech/alpha2/core/base/BaseManager;->jsonMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    iput-object v0, p0, Lcom/ubtech/alpha2/core/base/BaseManager;->jsonMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 73
    iget-object v0, p0, Lcom/ubtech/alpha2/core/base/BaseManager;->jsonMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ObjectMapper;->getSerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->ALWAYS:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->setSerializationInclusion(Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)V

    .line 75
    iget-object v0, p0, Lcom/ubtech/alpha2/core/base/BaseManager;->jsonMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ObjectMapper;->getDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_UNKNOWN_PROPERTIES:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/map/DeserializationConfig;->set(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/ubtech/alpha2/core/base/BaseManager;->jsonMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    return-object v0
.end method

.method public getXMLMapper()Lcom/thoughtworks/xstream/XStream;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ubtech/alpha2/core/base/BaseManager;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/ubtech/alpha2/core/base/BaseManager$1;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/XppDriver;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/XppDriver;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/ubtech/alpha2/core/base/BaseManager$1;-><init>(Lcom/ubtech/alpha2/core/base/BaseManager;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    iput-object v0, p0, Lcom/ubtech/alpha2/core/base/BaseManager;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    .line 109
    iget-object v0, p0, Lcom/ubtech/alpha2/core/base/BaseManager;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/XStream;->autodetectAnnotations(Z)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/ubtech/alpha2/core/base/BaseManager;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    return-object v0
.end method

.method public jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 153
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    iget-object v2, p0, Lcom/ubtech/alpha2/core/base/BaseManager;->jsonMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v2, p1, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 162
    :goto_0
    return-object v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Lorg/codehaus/jackson/JsonParseException;
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParseException;->printStackTrace()V

    .line 162
    .end local v0    # "e":Lorg/codehaus/jackson/JsonParseException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 157
    :catch_1
    move-exception v0

    .line 158
    .local v0, "e":Lorg/codehaus/jackson/map/JsonMappingException;
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/JsonMappingException;->printStackTrace()V

    goto :goto_1

    .line 159
    .end local v0    # "e":Lorg/codehaus/jackson/map/JsonMappingException;
    :catch_2
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public xmlToBean(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "xml"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lcom/ubtech/alpha2/core/base/BaseManager;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v1, p2}, Lcom/thoughtworks/xstream/XStream;->processAnnotations(Ljava/lang/Class;)V

    .line 139
    iget-object v1, p0, Lcom/ubtech/alpha2/core/base/BaseManager;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    .line 140
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method public xmlToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 124
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lcom/ubtech/alpha2/core/base/BaseManager;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v1, p2}, Lcom/thoughtworks/xstream/XStream;->processAnnotations(Ljava/lang/Class;)V

    .line 125
    iget-object v1, p0, Lcom/ubtech/alpha2/core/base/BaseManager;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    return-object v0
.end method
