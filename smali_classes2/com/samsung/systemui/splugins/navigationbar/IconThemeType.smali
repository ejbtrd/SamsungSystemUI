.class public final enum Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;
.super Ljava/lang/Enum;
.source "IconThemeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

.field public static final enum TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

.field public static final enum TYPE_OPENTHEME:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

.field public static final enum TYPE_OPENTHEME_SYSUI:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 5
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    const-string v1, "TYPE_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    .line 6
    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    const-string v3, "TYPE_OPENTHEME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_OPENTHEME:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    .line 7
    new-instance v3, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    const-string v5, "TYPE_OPENTHEME_SYSUI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_OPENTHEME_SYSUI:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->$VALUES:[Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;
    .locals 1

    .line 4
    const-class v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;
    .locals 1

    .line 4
    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->$VALUES:[Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    return-object v0
.end method
