package EPrints::Plugin::Export::EPMTest2;

use EPrints::Plugin::Export::TextFile;

@ISA = ( "EPrints::Plugin::Export::TextFile" );

use strict;

sub new
{
	my( $class, %opts ) = @_;

	my $self = $class->SUPER::new( %opts );

	$self->{name} = "EPM Test 2";
	$self->{accept} = [ 'dataobj/eprint', 'list/eprint' ];
	$self->{visible} = "all";

	$self->{disable} = 1;
	
	return $self;
}


sub output_dataobj
{
	my( $plugin, $dataobj ) = @_;

	return "This is an EPM test 2\n";
}
