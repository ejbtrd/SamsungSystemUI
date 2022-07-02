.class public final Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$favoriteControlChangeMainCallback$1;
.super Ljava/lang/Object;
.source "CustomControlsFavoritingActivity.kt"

# interfaces
.implements Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/controls/controller/CustomControlsController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/AUIFacade;Lcom/android/systemui/controls/ui/util/SALogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControlInfoChange(Lcom/android/systemui/controls/management/model/ControlInfoForStructure;)V
    .locals 0
    .param p1    # Lcom/android/systemui/controls/management/model/ControlInfoForStructure;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "controlInfoForStructure"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
