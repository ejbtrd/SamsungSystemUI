.class final Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$show$1;
.super Ljava/lang/Object;
.source "CustomControlsUiControllerImpl.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->show(Landroid/view/ViewGroup;Ljava/lang/Runnable;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$show$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$show$1;

    invoke-direct {v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$show$1;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$show$1;->INSTANCE:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$show$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 419
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$show$1;->accept(Z)V

    return-void
.end method

.method public final accept(Z)V
    .locals 0

    return-void
.end method
