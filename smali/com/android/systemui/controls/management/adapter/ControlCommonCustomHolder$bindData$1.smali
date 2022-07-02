.class final Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder$bindData$1;
.super Ljava/lang/Object;
.source "CustomControlAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->bindData(Lcom/android/systemui/controls/management/model/CustomElementWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $ci:Lcom/android/systemui/controls/ControlInterface;

.field final synthetic this$0:Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;Lcom/android/systemui/controls/ControlInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder$bindData$1;->$ci:Lcom/android/systemui/controls/ControlInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 333
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;

    invoke-static {p1}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->access$getFavorite$p(Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->updateFavorite(Z)V

    .line 334
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;

    invoke-static {p1}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->access$getFavoriteCallback$p(Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;)Lkotlin/jvm/functions/Function2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder$bindData$1;->$ci:Lcom/android/systemui/controls/ControlInterface;

    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getControlId()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;

    invoke-static {p0}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->access$getFavorite$p(Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;)Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
