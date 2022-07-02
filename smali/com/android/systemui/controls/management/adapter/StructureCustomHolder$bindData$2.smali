.class final Lcom/android/systemui/controls/management/adapter/StructureCustomHolder$bindData$2;
.super Ljava/lang/Object;
.source "CustomControlAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->bindData(Lcom/android/systemui/controls/management/model/CustomElementWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder$bindData$2;->this$0:Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 576
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder$bindData$2;->this$0:Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;

    invoke-static {p1}, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->access$getStructureAll$p(Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder$bindData$2;->this$0:Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;

    .line 577
    invoke-static {p0}, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->access$getStructureAll$p(Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 578
    invoke-static {p0}, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->access$getFavoriteCallback$p(Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {p0}, Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;->access$getStructureName$p(Lcom/android/systemui/controls/management/adapter/StructureCustomHolder;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string/jumbo p0, "structureName"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
