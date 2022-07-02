.class final Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ControlViewHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $control:Landroid/service/controls/Control;

.field final synthetic $enabled:Z

.field final synthetic $fg:Landroid/content/res/ColorStateList;

.field final synthetic $newText:Ljava/lang/CharSequence;

.field final synthetic $ri:Lcom/android/systemui/controls/ui/RenderInfo;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;ZLjava/lang/CharSequence;Lcom/android/systemui/controls/ui/RenderInfo;Landroid/content/res/ColorStateList;Landroid/service/controls/Control;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iput-boolean p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$enabled:Z

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$newText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$ri:Lcom/android/systemui/controls/ui/RenderInfo;

    iput-object p5, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$fg:Landroid/content/res/ColorStateList;

    iput-object p6, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$control:Landroid/service/controls/Control;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 342
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 11

    .line 343
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-boolean v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$enabled:Z

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$newText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$ri:Lcom/android/systemui/controls/ui/RenderInfo;

    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/RenderInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$fg:Landroid/content/res/ColorStateList;

    const-string v5, "fg"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$control:Landroid/service/controls/Control;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/controls/ui/ControlViewHolder;->updateStatusRow$frameworks__base__packages__SystemUI__android_common__SystemUI_core(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/service/controls/Control;)V

    .line 344
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE:Z

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCustomControlViewHolder()Lcom/android/systemui/controls/ui/CustomControlViewHolder;

    move-result-object v1

    .line 346
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$control:Landroid/service/controls/Control;

    .line 347
    iget-boolean v3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$enabled:Z

    .line 348
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$ri:Lcom/android/systemui/controls/ui/RenderInfo;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/RenderInfo;->getCustomRenderInfo()Lcom/android/systemui/controls/ui/CustomRenderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/CustomRenderInfo;->getActionIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 349
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    move-result v5

    .line 350
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v6

    .line 351
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result v7

    .line 352
    invoke-static {}, Lcom/android/systemui/controls/ui/ControlViewHolder;->access$getATTR_ENABLED$cp()[I

    move-result-object v8

    .line 353
    invoke-static {}, Lcom/android/systemui/controls/ui/ControlViewHolder;->access$getATTR_DISABLED$cp()[I

    move-result-object v9

    .line 354
    sget-object v0, Lcom/android/systemui/controls/ui/CustomRenderInfo;->Companion:Lcom/android/systemui/controls/ui/CustomRenderInfo$Companion;

    iget-object v10, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v10}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$control:Landroid/service/controls/Control;

    invoke-virtual {v0, v10, p0}, Lcom/android/systemui/controls/ui/CustomRenderInfo$Companion;->lookupStatusIcon(Landroid/content/Context;Landroid/service/controls/Control;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 345
    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->updateStatusRow(Landroid/service/controls/Control;ZLandroid/graphics/drawable/Drawable;ILandroid/service/controls/templates/ControlTemplate;I[I[ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
