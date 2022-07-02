.class public interface abstract Lcom/android/systemui/statusbar/LightRevealEffect;
.super Ljava/lang/Object;
.source "LightRevealScrim.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/LightRevealEffect$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/LightRevealEffect$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/LightRevealEffect$Companion;->$$INSTANCE:Lcom/android/systemui/statusbar/LightRevealEffect$Companion;

    sput-object v0, Lcom/android/systemui/statusbar/LightRevealEffect;->Companion:Lcom/android/systemui/statusbar/LightRevealEffect$Companion;

    return-void
.end method


# virtual methods
.method public abstract setRevealAmountOnScrim(FLcom/android/systemui/statusbar/LightRevealScrim;)V
    .param p2    # Lcom/android/systemui/statusbar/LightRevealScrim;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
