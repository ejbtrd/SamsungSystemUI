.class public Lcom/android/systemui/qs/QSTileHost$TilesMap;
.super Ljava/lang/Object;
.source "QSTileHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTileHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TilesMap"
.end annotation


# static fields
.field public static EID_TILE_STATE:I

.field public static SID_TILE_STATE:I

.field public static mTilesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/systemui/qs/QSTileHost$TilesMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1778
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->mTilesMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 1779
    sput-object v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->sInstance:Lcom/android/systemui/qs/QSTileHost$TilesMap;

    const/4 v0, 0x0

    .line 1780
    sput v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->EID_TILE_STATE:I

    const/4 v0, 0x1

    .line 1781
    sput v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->SID_TILE_STATE:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SystemUIAnalytics"

    const-string v1, "TilesMap"

    .line 1807
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTileHost$TilesMap;->initMap(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileHost$TilesMap;
    .locals 1

    .line 1800
    sget-object v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->sInstance:Lcom/android/systemui/qs/QSTileHost$TilesMap;

    if-nez v0, :cond_0

    .line 1801
    new-instance v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSTileHost$TilesMap;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->sInstance:Lcom/android/systemui/qs/QSTileHost$TilesMap;

    .line 1803
    :cond_0
    sget-object p0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->sInstance:Lcom/android/systemui/qs/QSTileHost$TilesMap;

    return-object p0
.end method

.method private getItems(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1812
    sget-object p0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->sInstance:Lcom/android/systemui/qs/QSTileHost$TilesMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1813
    :cond_0
    sget-object p0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->mTilesMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private initMap(Landroid/content/Context;)V
    .locals 6

    .line 1784
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$array;->tile_ids:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 1785
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1786
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 1788
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1789
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1790
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    .line 1791
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    .line 1792
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1793
    sget-object v4, Lcom/android/systemui/qs/QSTileHost$TilesMap;->mTilesMap:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1794
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getId(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1817
    sget v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->SID_TILE_STATE:I

    const/4 v1, 0x0

    if-lt v0, p2, :cond_2

    sget v0, Lcom/android/systemui/qs/QSTileHost$TilesMap;->EID_TILE_STATE:I

    if-le v0, p2, :cond_0

    goto :goto_0

    .line 1818
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTileHost$TilesMap;->getItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 1820
    :cond_1
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method
