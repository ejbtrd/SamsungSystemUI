.class public final Lcom/google/dexmaker/dx/dex/file/Statistics;
.super Ljava/lang/Object;
.source "Statistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/dexmaker/dx/dex/file/Statistics$Data;
    }
.end annotation


# instance fields
.field private final dataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/dexmaker/dx/dex/file/Statistics$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/dexmaker/dx/dex/file/Statistics;->dataMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public add(Lcom/google/dexmaker/dx/dex/file/Item;)V
    .locals 2

    .line 45
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/Item;->typeName()Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/google/dexmaker/dx/dex/file/Statistics;->dataMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/dexmaker/dx/dex/file/Statistics$Data;

    if-nez v1, :cond_0

    .line 49
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/Statistics;->dataMap:Ljava/util/HashMap;

    new-instance v1, Lcom/google/dexmaker/dx/dex/file/Statistics$Data;

    invoke-direct {v1, p1, v0}, Lcom/google/dexmaker/dx/dex/file/Statistics$Data;-><init>(Lcom/google/dexmaker/dx/dex/file/Item;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v1, p1}, Lcom/google/dexmaker/dx/dex/file/Statistics$Data;->add(Lcom/google/dexmaker/dx/dex/file/Item;)V

    :goto_0
    return-void
.end method

.method public addAll(Lcom/google/dexmaker/dx/dex/file/Section;)V
    .locals 1

    .line 61
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/file/Section;->items()Ljava/util/Collection;

    move-result-object p1

    .line 62
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/dx/dex/file/Item;

    .line 63
    invoke-virtual {p0, v0}, Lcom/google/dexmaker/dx/dex/file/Statistics;->add(Lcom/google/dexmaker/dx/dex/file/Item;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeAnnotation(Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/file/Statistics;->dataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "\nstatistics:\n"

    .line 77
    invoke-interface {p1, v0, v1}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 79
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 81
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/Statistics;->dataMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/dexmaker/dx/dex/file/Statistics$Data;

    .line 82
    invoke-static {v1}, Lcom/google/dexmaker/dx/dex/file/Statistics$Data;->access$000(Lcom/google/dexmaker/dx/dex/file/Statistics$Data;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/dx/dex/file/Statistics$Data;

    .line 86
    invoke-virtual {v0, p1}, Lcom/google/dexmaker/dx/dex/file/Statistics$Data;->writeAnnotation(Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V

    goto :goto_1

    :cond_2
    return-void
.end method
