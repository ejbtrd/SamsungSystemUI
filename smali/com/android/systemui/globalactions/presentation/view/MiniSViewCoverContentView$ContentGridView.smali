.class Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentGridView;
.super Landroid/widget/GridView;
.source "MiniSViewCoverContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentGridView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;Landroid/content/Context;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentGridView;->this$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;

    .line 235
    invoke-direct {p0, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 236
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 237
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 245
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
