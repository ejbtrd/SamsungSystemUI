.class Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;
.super Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;
.source "KeyguardStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGarden;Ljava/lang/String;)V
    .locals 0

    .line 950
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGarden;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCameraTopMarginContainerMarginLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1

    .line 960
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 961
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected updateLeftContainerMaxWidth(I)V
    .locals 0

    .line 953
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->updateLeftContainerMaxWidth(I)V

    .line 954
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$602(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;I)I

    return-void
.end method
