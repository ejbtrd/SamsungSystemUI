.class public final Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$bindAndLoad$ps$1;
.super Landroid/service/controls/IControlsProviderInfoSubscriber$Stub;
.source "ControlsBindingControllerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->bindAndLoad(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;Ljava/util/function/Consumer;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsBindingControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsBindingControllerImpl.kt\ncom/android/systemui/controls/controller/ControlsBindingControllerImpl$bindAndLoad$ps$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,428:1\n1#2:429\n*E\n"
.end annotation


# instance fields
.field final synthetic $consumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/service/controls/ControlsProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/controls/ControlsProviderInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$bindAndLoad$ps$1;->$consumer:Ljava/util/function/Consumer;

    .line 146
    invoke-direct {p0}, Landroid/service/controls/IControlsProviderInfoSubscriber$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Landroid/os/IBinder;Landroid/service/controls/ControlsProviderInfo;)V
    .locals 0
    .param p1    # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/service/controls/ControlsProviderInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$bindAndLoad$ps$1;->$consumer:Ljava/util/function/Consumer;

    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
