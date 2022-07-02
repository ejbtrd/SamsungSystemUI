.class final Lcom/android/systemui/controls/controller/ControlInfo$customControlInfo$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ControlInfo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/ControlInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/android/systemui/controls/controller/CustomControlInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/controller/ControlInfo$customControlInfo$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/controller/ControlInfo$customControlInfo$2;

    invoke-direct {v0}, Lcom/android/systemui/controls/controller/ControlInfo$customControlInfo$2;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/controller/ControlInfo$customControlInfo$2;->INSTANCE:Lcom/android/systemui/controls/controller/ControlInfo$customControlInfo$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/android/systemui/controls/controller/CustomControlInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 44
    new-instance p0, Lcom/android/systemui/controls/controller/CustomControlInfo;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/controller/CustomControlInfo;-><init>(I)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlInfo$customControlInfo$2;->invoke()Lcom/android/systemui/controls/controller/CustomControlInfo;

    move-result-object p0

    return-object p0
.end method
