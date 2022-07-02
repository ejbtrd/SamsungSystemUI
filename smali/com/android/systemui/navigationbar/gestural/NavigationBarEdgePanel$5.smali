.class Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$5;
.super Ljava/lang/Object;
.source "NavigationBarEdgePanel.java"

# interfaces
.implements Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$SamplingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

.field final synthetic val$isPrimaryDisplay:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;Z)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$5;->this$0:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$5;->val$isPrimaryDisplay:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSampledRegion(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    .line 369
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz p1, :cond_0

    .line 370
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$5;->this$0:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    invoke-static {p1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->access$800(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$5;->this$0:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->access$700(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 372
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$5;->this$0:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->access$800(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public isSamplingEnabled()Z
    .locals 0

    .line 377
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$5;->val$isPrimaryDisplay:Z

    return p0
.end method

.method public onRegionDarknessChanged(Z)V
    .locals 1

    .line 364
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$5;->this$0:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->access$600(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;ZZ)V

    return-void
.end method
