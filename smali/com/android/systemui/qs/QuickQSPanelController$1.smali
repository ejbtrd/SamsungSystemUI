.class Lcom/android/systemui/qs/QuickQSPanelController$1;
.super Ljava/lang/Object;
.source "QuickQSPanelController.java"

# interfaces
.implements Lcom/android/systemui/qs/QuickQSPanelController$BarItemsHeightProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QuickQSPanelController;->onViewAttached()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QuickQSPanelController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QuickQSPanelController;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/systemui/qs/QuickQSPanelController$1;->this$0:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBarItemsHeight()I
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/QuickQSPanelController$1;->this$0:Lcom/android/systemui/qs/QuickQSPanelController;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarController;->getCollapsedBarItemsHeight()I

    move-result p0

    return p0
.end method
