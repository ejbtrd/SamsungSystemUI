.class final Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$1;
.super Ljava/lang/Object;
.source "ControlsSpinner.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/view/ControlsSpinner;->showSpinner(Ljava/util/List;Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/ui/view/ControlsSpinner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/view/ControlsSpinner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$1;->this$0:Lcom/android/systemui/controls/ui/view/ControlsSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$1;->this$0:Lcom/android/systemui/controls/ui/view/ControlsSpinner;

    invoke-static {p0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->access$getSpinnerTouchCallback$p(Lcom/android/systemui/controls/ui/view/ControlsSpinner;)Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
