.class public final Lcom/android/systemui/controls/ui/util/DeviceStateWrapperImpl;
.super Ljava/lang/Object;
.source "DeviceStateWrapperImpl.kt"

# interfaces
.implements Lcom/android/systemui/controls/ui/util/DeviceStateWrapper;


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/DeviceStateWrapperImpl;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isOpenTheme()Z
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/DeviceStateWrapperImpl;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
