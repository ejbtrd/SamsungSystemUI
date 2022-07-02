.class final Lcom/android/systemui/controls/ui/RenderInfo$customRenderInfo$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RenderInfo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/RenderInfo;-><init>(Landroid/graphics/drawable/Drawable;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/android/systemui/controls/ui/CustomRenderInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/ui/RenderInfo$customRenderInfo$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/ui/RenderInfo$customRenderInfo$2;

    invoke-direct {v0}, Lcom/android/systemui/controls/ui/RenderInfo$customRenderInfo$2;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/ui/RenderInfo$customRenderInfo$2;->INSTANCE:Lcom/android/systemui/controls/ui/RenderInfo$customRenderInfo$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/android/systemui/controls/ui/CustomRenderInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 40
    new-instance p0, Lcom/android/systemui/controls/ui/CustomRenderInfo;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/ui/CustomRenderInfo;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/RenderInfo$customRenderInfo$2;->invoke()Lcom/android/systemui/controls/ui/CustomRenderInfo;

    move-result-object p0

    return-object p0
.end method
