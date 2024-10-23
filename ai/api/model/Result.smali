.class public Lai/api/model/Result;
.super Ljava/lang/Object;
.source "Result.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DATE_FORMAT_ERROR_MESSAGE:Ljava/lang/String; = "\'%s\' parameter has value \'%s\' and can\'t be parsed as a Date or Time"


# instance fields
.field private action:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "action"
    .end annotation
.end field

.field private actionIncomplete:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actionIncomplete"
    .end annotation
.end field

.field private contexts:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contexts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lai/api/model/AIOutputContext;",
            ">;"
        }
    .end annotation
.end field

.field private fulfillment:Lai/api/model/Fulfillment;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fulfillment"
    .end annotation
.end field

.field private metadata:Lai/api/model/Metadata;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "metadata"
    .end annotation
.end field

.field private parameters:Ljava/util/HashMap;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parameters"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field

.field private resolvedQuery:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resolvedQuery"
    .end annotation
.end field

.field private source:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lai/api/model/Result;->action:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 85
    const-string v0, ""

    .line 87
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lai/api/model/Result;->action:Ljava/lang/String;

    goto :goto_0
.end method

.method public getComplexParameter(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lai/api/model/Result;->getComplexParameter(Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method public getComplexParameter(Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 226
    iget-object v1, p0, Lai/api/model/Result;->parameters:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lai/api/model/Result;->parameters:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 229
    .local v0, "jsonObject":Lcom/google/gson/JsonObject;
    if-nez v0, :cond_1

    .line 235
    .end local v0    # "jsonObject":Lcom/google/gson/JsonObject;
    .end local p2    # "defaultValue":Lcom/google/gson/JsonObject;
    :cond_0
    :goto_0
    return-object p2

    .restart local v0    # "jsonObject":Lcom/google/gson/JsonObject;
    .restart local p2    # "defaultValue":Lcom/google/gson/JsonObject;
    :cond_1
    move-object p2, v0

    .line 233
    goto :goto_0
.end method

.method public getContext(Ljava/lang/String;)Lai/api/model/AIOutputContext;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name argument must be not empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_0
    iget-object v2, p0, Lai/api/model/Result;->contexts:Ljava/util/List;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 261
    :goto_0
    return-object v0

    .line 255
    :cond_1
    iget-object v2, p0, Lai/api/model/Result;->contexts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lai/api/model/AIOutputContext;

    .line 256
    .local v0, "c":Lai/api/model/AIOutputContext;
    invoke-virtual {v0}, Lai/api/model/AIOutputContext;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .end local v0    # "c":Lai/api/model/AIOutputContext;
    :cond_3
    move-object v0, v1

    .line 261
    goto :goto_0
.end method

.method public getContexts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lai/api/model/AIOutputContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lai/api/model/Result;->contexts:Ljava/util/List;

    return-object v0
.end method

.method public getDateParameter(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lai/api/model/Result;->getDateParameter(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDateParameter(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v2, p0, Lai/api/model/Result;->parameters:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    iget-object v2, p0, Lai/api/model/Result;->parameters:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "parameterStringValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    .end local v0    # "parameterStringValue":Ljava/lang/String;
    .end local p2    # "defaultValue":Ljava/util/Date;
    :cond_0
    :goto_0
    return-object p2

    .line 139
    .restart local v0    # "parameterStringValue":Ljava/lang/String;
    .restart local p2    # "defaultValue":Ljava/util/Date;
    :cond_1
    :try_start_0
    invoke-static {v0}, Lai/api/util/ParametersConverter;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "pe":Ljava/text/ParseException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'%s\' parameter has value \'%s\' and can\'t be parsed as a Date or Time"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getDateTimeParameter(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lai/api/model/Result;->getDateTimeParameter(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDateTimeParameter(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v2, p0, Lai/api/model/Result;->parameters:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lai/api/model/Result;->parameters:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "parameterStringValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    .end local v0    # "parameterStringValue":Ljava/lang/String;
    .end local p2    # "defaultValue":Ljava/util/Date;
    :cond_0
    :goto_0
    return-object p2

    .line 161
    .restart local v0    # "parameterStringValue":Ljava/lang/String;
    .restart local p2    # "defaultValue":Ljava/util/Date;
    :cond_1
    :try_start_0
    invoke-static {v0}, Lai/api/util/ParametersConverter;->parseDateTime(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "pe":Ljava/text/ParseException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'%s\' parameter has value \'%s\' and can\'t be parsed as a Date or Time"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getFloatParameter(Ljava/lang/String;)F
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lai/api/model/Result;->getFloatParameter(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFloatParameter(Ljava/lang/String;F)F
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 214
    iget-object v1, p0, Lai/api/model/Result;->parameters:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lai/api/model/Result;->parameters:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "parameterStringValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    .end local v0    # "parameterStringValue":Ljava/lang/String;
    .end local p2    # "defaultValue":F
    :cond_0
    :goto_0
    return p2

    .line 221
    .restart local v0    # "parameterStringValue":Ljava/lang/String;
    .restart local p2    # "defaultValue":F
    :cond_1
    invoke-static {v0}, Lai/api/util/ParametersConverter;->parseFloat(Ljava/lang/String;)F

    move-result p2

    goto :goto_0
.end method

.method public getFulfillment()Lai/api/model/Fulfillment;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lai/api/model/Result;->fulfillment:Lai/api/model/Fulfillment;

    return-object v0
.end method

.method public getIntParameter(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lai/api/model/Result;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIntParameter(Ljava/lang/String;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 197
    iget-object v1, p0, Lai/api/model/Result;->parameters:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lai/api/model/Result;->parameters:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "parameterStringValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    .end local v0    # "parameterStringValue":Ljava/lang/String;
    .end local p2    # "defaultValue":I
    :cond_0
    :goto_0
    return p2

    .line 204
    .restart local v0    # "parameterStringValue":Ljava/lang/String;
    .restart local p2    # "defaultValue":I
    :cond_1
    invoke-static {v0}, Lai/api/util/ParametersConverter;->parseInteger(Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method

.method public getMetadata()Lai/api/model/Metadata;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lai/api/model/Result;->metadata:Lai/api/model/Metadata;

    return-object v0
.end method

.method public getParameters()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lai/api/model/Result;->parameters:Ljava/util/HashMap;

    return-object v0
.end method

.method public getResolvedQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lai/api/model/Result;->resolvedQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lai/api/model/Result;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getStringParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lai/api/model/Result;->getStringParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v1, p0, Lai/api/model/Result;->parameters:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lai/api/model/Result;->parameters:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public getTimeParameter(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lai/api/model/Result;->getTimeParameter(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTimeParameter(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v2, p0, Lai/api/model/Result;->parameters:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lai/api/model/Result;->parameters:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "parameterStringValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    .end local v0    # "parameterStringValue":Ljava/lang/String;
    .end local p2    # "defaultValue":Ljava/util/Date;
    :cond_0
    :goto_0
    return-object p2

    .line 183
    .restart local v0    # "parameterStringValue":Ljava/lang/String;
    .restart local p2    # "defaultValue":Ljava/util/Date;
    :cond_1
    :try_start_0
    invoke-static {v0}, Lai/api/util/ParametersConverter;->parseTime(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "pe":Ljava/text/ParseException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'%s\' parameter has value \'%s\' and can\'t be parsed as a Date or Time"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isActionIncomplete()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lai/api/model/Result;->actionIncomplete:Z

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lai/api/model/Result;->action:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setActionIncomplete(Z)V
    .locals 0
    .param p1, "actionIncomplete"    # Z

    .prologue
    .line 288
    iput-boolean p1, p0, Lai/api/model/Result;->actionIncomplete:Z

    .line 289
    return-void
.end method

.method public setFulfillment(Lai/api/model/Fulfillment;)V
    .locals 0
    .param p1, "fulfillment"    # Lai/api/model/Fulfillment;

    .prologue
    .line 280
    iput-object p1, p0, Lai/api/model/Result;->fulfillment:Lai/api/model/Fulfillment;

    .line 281
    return-void
.end method

.method public setMetadata(Lai/api/model/Metadata;)V
    .locals 0
    .param p1, "metadata"    # Lai/api/model/Metadata;

    .prologue
    .line 107
    iput-object p1, p0, Lai/api/model/Result;->metadata:Lai/api/model/Metadata;

    .line 108
    return-void
.end method

.method public setResolvedQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "resolvedQuery"    # Ljava/lang/String;

    .prologue
    .line 272
    iput-object p1, p0, Lai/api/model/Result;->resolvedQuery:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lai/api/model/Result;->source:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 310
    const-string v0, "Result {action=\'%s\', resolvedQuery=\'%s\'}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lai/api/model/Result;->action:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lai/api/model/Result;->resolvedQuery:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method trimParameters()V
    .locals 5

    .prologue
    .line 292
    iget-object v3, p0, Lai/api/model/Result;->parameters:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    .line 293
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 294
    .local v2, "parametersToTrim":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lai/api/model/Result;->parameters:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 295
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lai/api/model/Result;->parameters:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 296
    .local v0, "jsonElement":Lcom/google/gson/JsonElement;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 297
    check-cast v3, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {v3}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    .end local v0    # "jsonElement":Lcom/google/gson/JsonElement;
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 303
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v4, p0, Lai/api/model/Result;->parameters:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 306
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "parametersToTrim":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method
