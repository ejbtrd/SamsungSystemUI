.class Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$4;
.super Ljava/lang/Object;
.source "KeyguardStatusBarView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mRightStatusIconContainer:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V
    .locals 0

    .line 1093
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRightStatusIconContainer()Landroid/view/ViewGroup;
    .locals 2

    .line 1103
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$4;->mRightStatusIconContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    sget v1, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$4;->mRightStatusIconContainer:Landroid/view/ViewGroup;

    .line 1106
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$4;->mRightStatusIconContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getTicket()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTinted()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
