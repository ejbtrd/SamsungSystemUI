.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;
.super Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;
.source "PhoneStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGarden;Ljava/lang/String;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGarden;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCameraTopMarginContainerMarginLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 808
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected needToUpdatePaddings(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)Z
    .locals 0

    .line 782
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->needToUpdatePaddings(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected updateSidePadding(II)V
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getSidePaddingContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 797
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getSidePaddingContainer()Landroid/view/ViewGroup;

    move-result-object p0

    const/4 v0, 0x0

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, v0, p2, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method
