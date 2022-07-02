.class Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView$1;
.super Ljava/lang/Object;
.source "SubscreenSignalInfoView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView$1;->this$0:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView$1;->this$0:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->access$000(Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 99
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView$1;->this$0:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->access$100(Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;)Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView$Callback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 102
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView$1;->this$0:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->access$100(Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;)Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView$Callback;->onTouched()V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
