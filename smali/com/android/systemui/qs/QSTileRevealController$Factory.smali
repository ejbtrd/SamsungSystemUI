.class Lcom/android/systemui/qs/QSTileRevealController$Factory;
.super Ljava/lang/Object;
.source "QSTileRevealController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTileRevealController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mQsCustomizerController:Lcom/android/systemui/qs/customize/SecQSCustomizerController;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileRevealController$Factory;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/android/systemui/qs/QSTileRevealController$Factory;->mQsCustomizerController:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    return-void
.end method


# virtual methods
.method create(Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/QSTileRevealController;
    .locals 2

    .line 102
    new-instance v0, Lcom/android/systemui/qs/QSTileRevealController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileRevealController$Factory;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/QSTileRevealController$Factory;->mQsCustomizerController:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/android/systemui/qs/QSTileRevealController;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/PagedTileLayout;Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V

    return-object v0
.end method
