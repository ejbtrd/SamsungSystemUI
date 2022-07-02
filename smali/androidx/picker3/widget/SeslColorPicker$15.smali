.class Landroidx/picker3/widget/SeslColorPicker$15;
.super Ljava/lang/Object;
.source "SeslColorPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker3/widget/SeslColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker3/widget/SeslColorPicker;


# direct methods
.method constructor <init>(Landroidx/picker3/widget/SeslColorPicker;)V
    .locals 0

    .line 895
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$15;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 898
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker$15;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v0}, Landroidx/picker3/widget/SeslColorPicker;->access$2000(Landroidx/picker3/widget/SeslColorPicker;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 900
    sget v3, Landroidx/picker3/widget/SeslColorPicker;->RECENT_COLOR_SLOT_COUNT:I

    if-ge v2, v3, :cond_2

    .line 901
    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker$15;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v3}, Landroidx/picker3/widget/SeslColorPicker;->access$2100(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 902
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 903
    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker$15;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroidx/picker3/widget/SeslColorPicker;->access$302(Landroidx/picker3/widget/SeslColorPicker;Z)Z

    .line 904
    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker$15;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v3}, Landroidx/picker3/widget/SeslColorPicker;->access$2000(Landroidx/picker3/widget/SeslColorPicker;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 905
    iget-object v5, p0, Landroidx/picker3/widget/SeslColorPicker$15;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v5}, Landroidx/picker3/widget/SeslColorPicker;->access$500(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->setColor(I)V

    .line 906
    iget-object v5, p0, Landroidx/picker3/widget/SeslColorPicker$15;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v5, v3}, Landroidx/picker3/widget/SeslColorPicker;->access$2200(Landroidx/picker3/widget/SeslColorPicker;I)V

    .line 908
    iget-object v5, p0, Landroidx/picker3/widget/SeslColorPicker$15;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v5, v3}, Landroidx/picker3/widget/SeslColorPicker;->access$700(Landroidx/picker3/widget/SeslColorPicker;I)V

    .line 910
    iget-object v5, p0, Landroidx/picker3/widget/SeslColorPicker$15;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v5}, Landroidx/picker3/widget/SeslColorPicker;->access$900(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslGradientColorSeekBar;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 911
    iget-object v5, p0, Landroidx/picker3/widget/SeslColorPicker$15;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v5}, Landroidx/picker3/widget/SeslColorPicker;->access$900(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslGradientColorSeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    .line 913
    iget-object v6, p0, Landroidx/picker3/widget/SeslColorPicker$15;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v6}, Landroidx/picker3/widget/SeslColorPicker;->access$1100(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v1

    const-string v9, "%d"

    invoke-static {v8, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 914
    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker$15;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v4}, Landroidx/picker3/widget/SeslColorPicker;->access$1100(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 916
    :cond_0
    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker$15;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v4}, Landroidx/picker3/widget/SeslColorPicker;->access$1400(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslColorPicker$OnColorChangedListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 917
    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker$15;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {v4}, Landroidx/picker3/widget/SeslColorPicker;->access$1400(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslColorPicker$OnColorChangedListener;

    move-result-object v4

    invoke-interface {v4, v3}, Landroidx/picker3/widget/SeslColorPicker$OnColorChangedListener;->onColorChanged(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method
