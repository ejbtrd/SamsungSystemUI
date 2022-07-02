.class Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$1;
.super Ljava/lang/Object;
.source "BrightnessDetailSliderView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 81
    const-class p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isBrightnessBlocked()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->access$000(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 85
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 86
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->access$100(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V

    :cond_1
    return v0

    .line 90
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->access$200(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->access$300(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 91
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    .line 92
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->access$400(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
