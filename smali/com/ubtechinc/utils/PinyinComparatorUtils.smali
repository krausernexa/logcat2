.class public Lcom/ubtechinc/utils/PinyinComparatorUtils;
.super Ljava/lang/Object;
.source "PinyinComparatorUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/ubtechinc/utils/SortBaseModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ubtechinc/utils/SortBaseModel;Lcom/ubtechinc/utils/SortBaseModel;)I
    .locals 2
    .param p1, "o1"    # Lcom/ubtechinc/utils/SortBaseModel;
    .param p2, "o2"    # Lcom/ubtechinc/utils/SortBaseModel;

    .prologue
    .line 17
    invoke-virtual {p1}, Lcom/ubtechinc/utils/SortBaseModel;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/ubtechinc/utils/SortBaseModel;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    :cond_0
    const/4 v0, -0x1

    .line 23
    :goto_0
    return v0

    .line 19
    :cond_1
    invoke-virtual {p1}, Lcom/ubtechinc/utils/SortBaseModel;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 20
    invoke-virtual {p2}, Lcom/ubtechinc/utils/SortBaseModel;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {p1}, Lcom/ubtechinc/utils/SortBaseModel;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ubtechinc/utils/SortBaseModel;->getSortLetters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcom/ubtechinc/utils/SortBaseModel;

    check-cast p2, Lcom/ubtechinc/utils/SortBaseModel;

    invoke-virtual {p0, p1, p2}, Lcom/ubtechinc/utils/PinyinComparatorUtils;->compare(Lcom/ubtechinc/utils/SortBaseModel;Lcom/ubtechinc/utils/SortBaseModel;)I

    move-result v0

    return v0
.end method
