.class Lcom/android/systemui/qs/bar/BarController$OnApplyWindowInsetsListener;
.super Ljava/lang/Object;
.source "BarController.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/bar/BarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnApplyWindowInsetsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/BarController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/bar/BarController;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/bar/BarController;Lcom/android/systemui/qs/bar/BarController$1;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarController$OnApplyWindowInsetsListener;-><init>(Lcom/android/systemui/qs/bar/BarController;)V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 121
    :goto_0
    invoke-static {}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getNavBarHeight()I

    move-result v0

    .line 123
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/BarController;->access$600(Lcom/android/systemui/qs/bar/BarController;)I

    move-result v1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/BarController;->access$700(Lcom/android/systemui/qs/bar/BarController;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-static {v1, p1}, Lcom/android/systemui/qs/bar/BarController;->access$602(Lcom/android/systemui/qs/bar/BarController;I)I

    .line 125
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-static {p1, v0}, Lcom/android/systemui/qs/bar/BarController;->access$702(Lcom/android/systemui/qs/bar/BarController;I)I

    .line 126
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/BarController;->access$000(Lcom/android/systemui/qs/bar/BarController;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/bar/BarItem;

    .line 127
    invoke-interface {p1}, Lcom/android/systemui/qs/bar/BarItem;->updateHeightMargins()V

    goto :goto_1

    :cond_2
    return-object p2
.end method
