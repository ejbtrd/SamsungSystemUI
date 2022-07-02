.class Lcom/android/systemui/edgelighting/EdgeLightingService$5$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "EdgeLightingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/edgelighting/EdgeLightingService$5;->onShowEdgeWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/edgelighting/EdgeLightingService$5;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingService$5;)V
    .locals 0

    .line 698
    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$5$1;->this$1:Lcom/android/systemui/edgelighting/EdgeLightingService$5;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 701
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    return-void

    .line 704
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
