using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace EPOLIS.Migrations
{
    public partial class formpenutupan : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "ADMINID",
                table: "FormPenutupan");

            migrationBuilder.DropColumn(
                name: "CIF",
                table: "FormPenutupan");

            migrationBuilder.DropColumn(
                name: "ISBROKER",
                table: "FormPenutupan");

            migrationBuilder.DropColumn(
                name: "ISUPDATEPENUTUPANRENEWAL",
                table: "FormPenutupan");

            migrationBuilder.DropColumn(
                name: "NOPK",
                table: "FormPenutupan");

            migrationBuilder.DropColumn(
                name: "TGLINPUT",
                table: "FormPenutupan");

            migrationBuilder.DropColumn(
                name: "TGLOTORISASI",
                table: "FormPenutupan");

            migrationBuilder.DropColumn(
                name: "TGLSKK",
                table: "FormPenutupan");

            migrationBuilder.DropColumn(
                name: "UPDATEBY",
                table: "FormPenutupan");

            migrationBuilder.AddColumn<DateTime>(
                name: "ALAMATNASABAH",
                table: "FormPenutupan",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<string>(
                name: "EMAIL",
                table: "FormPenutupan",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "JENISASURANSI",
                table: "FormPenutupan",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "NOFASILITAS",
                table: "FormPenutupan",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "NOFAX",
                table: "FormPenutupan",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "NOHP",
                table: "FormPenutupan",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<DateTime>(
                name: "NONASABAH",
                table: "FormPenutupan",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<DateTime>(
                name: "NOREKENING",
                table: "FormPenutupan",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<string>(
                name: "OKUPASI",
                table: "FormPenutupan",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "PEKERJAAN",
                table: "FormPenutupan",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "SEGMENTASI",
                table: "FormPenutupan",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "TELPRUMAH",
                table: "FormPenutupan",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "ALAMATNASABAH",
                table: "FormPenutupan");

            migrationBuilder.DropColumn(
                name: "EMAIL",
                table: "FormPenutupan");

            migrationBuilder.DropColumn(
                name: "JENISASURANSI",
                table: "FormPenutupan");

            migrationBuilder.DropColumn(
                name: "NOFASILITAS",
                table: "FormPenutupan");

            migrationBuilder.DropColumn(
                name: "NOFAX",
                table: "FormPenutupan");

            migrationBuilder.DropColumn(
                name: "NOHP",
                table: "FormPenutupan");

            migrationBuilder.DropColumn(
                name: "NONASABAH",
                table: "FormPenutupan");

            migrationBuilder.DropColumn(
                name: "NOREKENING",
                table: "FormPenutupan");

            migrationBuilder.DropColumn(
                name: "OKUPASI",
                table: "FormPenutupan");

            migrationBuilder.DropColumn(
                name: "PEKERJAAN",
                table: "FormPenutupan");

            migrationBuilder.DropColumn(
                name: "SEGMENTASI",
                table: "FormPenutupan");

            migrationBuilder.DropColumn(
                name: "TELPRUMAH",
                table: "FormPenutupan");

            migrationBuilder.AddColumn<string>(
                name: "ADMINID",
                table: "FormPenutupan",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "CIF",
                table: "FormPenutupan",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "ISBROKER",
                table: "FormPenutupan",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "ISUPDATEPENUTUPANRENEWAL",
                table: "FormPenutupan",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "NOPK",
                table: "FormPenutupan",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "TGLINPUT",
                table: "FormPenutupan",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<DateTime>(
                name: "TGLOTORISASI",
                table: "FormPenutupan",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<DateTime>(
                name: "TGLSKK",
                table: "FormPenutupan",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<string>(
                name: "UPDATEBY",
                table: "FormPenutupan",
                type: "nvarchar(max)",
                nullable: true);
        }
    }
}
