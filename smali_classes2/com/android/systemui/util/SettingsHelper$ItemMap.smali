.class Lcom/android/systemui/util/SettingsHelper$ItemMap;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/SettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemMap"
.end annotation


# instance fields
.field private mMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/util/SettingsHelper$Item;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method private constructor <init>(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 1575
    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1576
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/util/SettingsHelper$1;)V
    .locals 0

    .line 1575
    invoke-direct {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/systemui/util/SettingsHelper$Item;)V
    .locals 2

    .line 1578
    invoke-static {p1}, Lcom/android/systemui/util/SettingsHelper$Item;->access$500(Lcom/android/systemui/util/SettingsHelper$Item;)Ljava/lang/String;

    move-result-object v0

    .line 1579
    invoke-static {p1, v0}, Lcom/android/systemui/util/SettingsHelper$Item;->access$600(Lcom/android/systemui/util/SettingsHelper$Item;Ljava/lang/String;)Landroid/net/Uri;

    .line 1580
    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1581
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HashMap CollisionException!! Please don\'t add same setting uri!!! NewKey:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", OriKey:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-static {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->access$500(Lcom/android/systemui/util/SettingsHelper$Item;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1583
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public dumpAll(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1592
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1593
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1594
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper$Item;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;
    .locals 0

    .line 1588
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper$Item;

    return-object p0
.end method

.method public registerAllObserver()V
    .locals 3

    .line 1626
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1627
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1628
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1629
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper$Item;->registerObserver()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateMapAll(Landroid/content/ContentResolver;)V
    .locals 3

    .line 1611
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1612
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1613
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1614
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper$Item;->resetCachedIntegrity()V

    goto :goto_0

    .line 1616
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1617
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1618
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1619
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper$Item;->isCachedIntegrity()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1620
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v1, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->read(Landroid/content/ContentResolver;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public updateMapForUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 3

    .line 1600
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1601
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1602
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1603
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v2, p2}, Lcom/android/systemui/util/SettingsHelper$Item;->equals(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1604
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper$Item;->resetCachedIntegrity()V

    .line 1605
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$ItemMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v1, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->read(Landroid/content/ContentResolver;)V

    goto :goto_0

    :cond_1
    return-void
.end method
