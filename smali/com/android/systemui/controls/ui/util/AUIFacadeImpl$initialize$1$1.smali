.class final synthetic Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$initialize$1$1;
.super Ljava/lang/Object;
.source "AUIFacadeImpl.kt"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# instance fields
.field final synthetic $tmp0:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$initialize$1$1;->$tmp0:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 1
    .param p1    # Landroid/media/SoundPool;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$initialize$1$1;->$tmp0:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->onLoadComplete$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/media/SoundPool;II)V

    return-void
.end method
