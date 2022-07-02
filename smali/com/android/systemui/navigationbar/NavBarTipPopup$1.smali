.class Lcom/android/systemui/navigationbar/NavBarTipPopup$1;
.super Ljava/lang/Object;
.source "NavBarTipPopup.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/NavBarTipPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigationbar/NavBarTipPopup;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->access$000(Lcom/android/systemui/navigationbar/NavBarTipPopup;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 53
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->access$102(Lcom/android/systemui/navigationbar/NavBarTipPopup;Z)Z

    .line 54
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->access$200(Lcom/android/systemui/navigationbar/NavBarTipPopup;)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->access$000(Lcom/android/systemui/navigationbar/NavBarTipPopup;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 61
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    invoke-static {p1}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->access$300(Lcom/android/systemui/navigationbar/NavBarTipPopup;)Lcom/samsung/android/widget/SemTipPopup;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    invoke-static {p1}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->access$300(Lcom/android/systemui/navigationbar/NavBarTipPopup;)Lcom/samsung/android/widget/SemTipPopup;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    invoke-static {p1}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->access$300(Lcom/android/systemui/navigationbar/NavBarTipPopup;)Lcom/samsung/android/widget/SemTipPopup;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    .line 63
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->access$302(Lcom/android/systemui/navigationbar/NavBarTipPopup;Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup;

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->hide()V

    .line 66
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->access$102(Lcom/android/systemui/navigationbar/NavBarTipPopup;Z)Z

    :cond_1
    return-void
.end method
